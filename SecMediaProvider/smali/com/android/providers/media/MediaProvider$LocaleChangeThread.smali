.class Lcom/android/providers/media/MediaProvider$LocaleChangeThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangeThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 9808
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9809
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    .line 9810
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 9816
    const-string v12, "LocaleChangeThread"

    move-object/from16 v0, p0

    invoke-super {v0, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 9817
    const-wide/16 v6, 0x0

    .local v6, "beforeLocaleChangingTime":J
    const-wide/16 v8, 0x0

    .line 9818
    .local v8, "changingTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 9819
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Start LocaleChangeThread"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9822
    const/4 v5, 0x0

    .line 9823
    .local v5, "database":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13

    .line 9824
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v12

    const-string v14, "external"

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-object v5, v0

    .line 9825
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9828
    if-eqz v5, :cond_1

    .line 9829
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 9834
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/providers/media/utils/SecDatabaseUtil;->setChangedLocale()V

    .line 9837
    if-eqz v10, :cond_0

    .line 9838
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9844
    :cond_0
    :goto_0
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Intent.ACTION_LOCALE_CHANGED : audio_meta for external.db SET date_modified=0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9847
    iget-object v2, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 9848
    .local v2, "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v2

    .line 9849
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 9850
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9852
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 9853
    .local v4, "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v4

    .line 9854
    :try_start_3
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9855
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9857
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.process.media.LOCALE_CHANGED_AND_SCAN"

    # invokes: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 9858
    if-eqz v10, :cond_1

    .line 9859
    const-string v12, "delete FROM audio_genres"

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9860
    const-string v12, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9862
    const-string v12, "DELETE from files_backup WHERE media_type=2;"

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9864
    const-string v12, "UPDATE files SET addr=NULL, langagecode=NULL WHERE media_type=1 OR media_type=3;"

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9873
    .end local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9874
    .local v3, "args":Landroid/os/Bundle;
    const-string v12, "volume"

    const-string v13, "external"

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    const-class v15, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13

    .line 9879
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v12

    const-string v14, "internal"

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-object v5, v0

    .line 9880
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 9883
    if-eqz v5, :cond_3

    .line 9884
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 9889
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/providers/media/utils/SecDatabaseUtil;->setChangedLocale()V

    .line 9893
    if-eqz v10, :cond_2

    .line 9894
    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 9900
    :cond_2
    :goto_1
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Intent.ACTION_LOCALE_CHANGED : audio_meta for internal.db SET date_modified=0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9903
    iget-object v2, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 9904
    .restart local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v2

    .line 9905
    :try_start_6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 9906
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 9908
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 9909
    .restart local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v4

    .line 9910
    :try_start_7
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9911
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 9912
    if-eqz v10, :cond_3

    .line 9913
    const-string v12, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9920
    .end local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "args":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9921
    .restart local v3    # "args":Landroid/os/Bundle;
    const-string v12, "volume"

    const-string v13, "internal"

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9922
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    const-class v15, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 9925
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish LocaleThread. Time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9927
    return-void

    .line 9825
    .end local v3    # "args":Landroid/os/Bundle;
    :catchall_0
    move-exception v12

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v12

    .line 9840
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v11

    .line 9841
    .local v11, "e":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Failed to setLocale()"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 9850
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v12

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v12

    .line 9855
    .restart local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_2
    move-exception v12

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v12

    .line 9880
    .end local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "args":Landroid/os/Bundle;
    :catchall_3
    move-exception v12

    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v12

    .line 9896
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v11

    .line 9897
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Failed to setLocale()"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 9906
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "albumCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_4
    move-exception v12

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v12

    .line 9911
    .restart local v4    # "artistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_5
    move-exception v12

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v12
.end method
