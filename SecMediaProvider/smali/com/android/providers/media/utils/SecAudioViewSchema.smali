.class public Lcom/android/providers/media/utils/SecAudioViewSchema;
.super Ljava/lang/Object;
.source "SecAudioViewSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/utils/SecAudioViewSchema$WhereCondition;
    }
.end annotation


# static fields
.field private static final ALBUM_KEY_ADD:Ljava/lang/String;

.field private static final ARTIST_KEY_ADD:Ljava/lang/String;

.field private static final SEC_AUDIO_ALBUM_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_AUDIO_ARTIST_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_AUDIO_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_AUDIO_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_AUDIO_GENRES_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_AUDIO_PLAYLIST_COLUMNS_ADDED:Ljava/lang/String; = ",mini_thumb_data"

.field private static final SEC_AUDIO_PLAYLIST_COLUMNS_ADDED_CHN:Ljava/lang/String;

.field public static final SEC_FILES_COLUMNS_CHN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TRACK_KEY_ADD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/providers/media/utils/SecAudioViewSchema;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->TAG:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_0

    const-string v0, ",title_search_key, title_pinyin, composer_pinyin, genre_name_pinyin, _display_name_pinyin, bucket_display_name_pinyin, name_pinyin "

    :goto_0
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_FILES_COLUMNS_CHN:Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    const-string v0, ",album_search_key, album_pinyin, artist_search_key "

    :goto_1
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_2

    const-string v0, ",artist_search_key, artist_pinyin "

    :goto_2
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_3

    const-string v0, ",genre_name_pinyin "

    :goto_3
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_GENRES_COLUMNS_CHN:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_4

    const-string v0, ",bucket_display_name_pinyin "

    :goto_4
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    .line 20
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_5

    const-string v0, ",composer_pinyin "

    :goto_5
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-eqz v0, :cond_6

    const-string v0, ",name_pinyin"

    :goto_6
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_PLAYLIST_COLUMNS_ADDED_CHN:Ljava/lang/String;

    .line 203
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->ARTIST_KEY_ADD:Ljava/lang/String;

    .line 204
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->ALBUM_KEY_ADD:Ljava/lang/String;

    .line 205
    sget-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    sput-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->TRACK_KEY_ADD:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 16
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 17
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 18
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 19
    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 20
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 23
    :cond_6
    const-string v0, ""

    goto :goto_6

    .line 203
    :cond_7
    const-string v0, "||\' \'||artist_search_key"

    goto :goto_7

    .line 204
    :cond_8
    const-string v0, "||\' \'||artist_search_key||\' \'||album_search_key"

    goto :goto_8

    .line 205
    :cond_9
    const-string v0, "||\' \'||artist_search_key||\' \'||album_search_key||\' \'||title_search_key"

    goto :goto_9
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static cleanAudioView(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "fromVersion"    # I

    .prologue
    .line 49
    const/16 v0, 0x322

    if-ge p1, v0, :cond_0

    .line 51
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "DROP VIEW IF EXISTS music_pick_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method private static createMusicAlbumInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "where"    # I

    .prologue
    .line 117
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 118
    .local v0, "musicOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "WHERE is_music=1 "

    .line 119
    .local v2, "whereExpr":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "music_album_info"

    .line 121
    .local v1, "viewName":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT audio.album_id AS _id, album, album_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MIN(year) AS minyear, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MAX(year) AS maxyear, artist, artist_id, artist_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count(*) AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "numsongs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",album_art._data AS album_art"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",count(distinct(artist)) as artist_count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GROUP BY audio.album_id;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    return-void

    .line 117
    .end local v0    # "musicOnly":Z
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v2    # "whereExpr":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "musicOnly":Z
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 119
    .restart local v2    # "whereExpr":Ljava/lang/String;
    :cond_2
    const-string v1, "music_pick_album_info"

    goto :goto_2
.end method

.method private static createMusicArtistInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "where"    # I

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, album_key, audio_meta.album_id as album_id, is_music, is_sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM audio_meta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "order by album_key desc;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 104
    .local v0, "musicOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "WHERE is_music=1 "

    .line 105
    .local v2, "whereExpr":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "music_artist_info"

    .line 107
    .local v1, "viewName":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT artist_id AS _id, artist, artist_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "COUNT(DISTINCT album_key) AS number_of_albums, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "COUNT(*) AS number_of_tracks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM music_audio_order_album_key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GROUP BY artist_key;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    return-void

    .line 103
    .end local v0    # "musicOnly":Z
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v2    # "whereExpr":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    .restart local v0    # "musicOnly":Z
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 105
    .restart local v2    # "whereExpr":Ljava/lang/String;
    :cond_2
    const-string v1, "music_pick_artist_info"

    goto :goto_2
.end method

.method private static createMusicComposersView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS SELECT _id, composer, album_id, sum(_total_duration) AS total_duration, sum(_count) AS count, sum(_count) AS number_of_tracks, dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, album_id, sum(duration/1000) AS _total_duration, count(_id) AS _count, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CASE WHEN length(composer) > 0 THEN composer ELSE \'<unknown>\' END AS composer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "min(title COLLATE LOCALIZED) as dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 GROUP BY composer) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GROUP BY composer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static createMusicFolderView(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "where"    # I

    .prologue
    .line 134
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "musicOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "WHERE is_music=1 "

    .line 136
    .local v2, "whereExpr":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "music_folders_view"

    .line 138
    .local v1, "viewName":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT _id, bucket_id, bucket_display_name, album_id, _data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count(_id) AS count, count(_id) AS number_of_tracks, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_secretbox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM (SELECT _id, bucket_id, bucket_display_name, album_id, _data, is_secretbox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM audio_meta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ORDER BY _display_name COLLATE LOCALIZED DESC) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GROUP BY bucket_id;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void

    .line 134
    .end local v0    # "musicOnly":Z
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v2    # "whereExpr":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    .restart local v0    # "musicOnly":Z
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 136
    .restart local v2    # "whereExpr":Ljava/lang/String;
    :cond_2
    const-string v1, "music_pick_folders_view"

    goto :goto_2
.end method

.method private static createMusicGenresView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS SELECT _id, genre_name, album_id, sum(duration/1000) AS total_duration, count(_id) AS count, count(_id) AS number_of_tracks, min(title COLLATE LOCALIZED) AS dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 GROUP BY genre_name; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static createMusicYearsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 170
    const-string v0, "CREATE VIEW IF NOT EXISTS music_years_view AS SELECT max(_id) AS _id, year, year_name, count(_id) AS count, album_id FROM (SELECT _id, year, year_name, album_id FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY year_name;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static recreateAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "defaultColumns"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "DROP VIEW IF EXISTS audio_playlists;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_playlists AS SELECT _id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mini_thumb_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/utils/SecAudioViewSchema;->SEC_AUDIO_PLAYLIST_COLUMNS_ADDED_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private static recreateDefaultView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "DROP VIEW IF EXISTS music_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP VIEW IF EXISTS music_genres_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "DROP VIEW IF EXISTS music_composers_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP VIEW IF EXISTS music_years_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicArtistInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 74
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicAlbumInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 75
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicFolderView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 76
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicGenresView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicComposersView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicYearsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    return-void
.end method

.method public static recreateMusicCacheMapTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 272
    return-void
.end method

.method public static recreateMusicView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->recreateDefaultView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->recreatePickerView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method private static recreatePickerView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x1

    .line 82
    const-string v0, "DROP VIEW IF EXISTS music_pick_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "DROP VIEW IF EXISTS music_pick_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "DROP VIEW IF EXISTS music_pick_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicArtistInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 87
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicAlbumInfoView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 88
    invoke-static {p0, v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->createMusicFolderView(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 89
    return-void
.end method

.method public static recreateSearchView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->recreateSearchViewInternal(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->recreateSearchViewInternal(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 201
    return-void
.end method

.method private static recreateSearchViewInternal(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "where"    # I

    .prologue
    .line 208
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 210
    .local v0, "musicOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "music_searchhelpertitle"

    .line 211
    .local v1, "searchHelperView":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v3, "music_search"

    .line 212
    .local v3, "searchView":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_3

    const-string v2, " WHERE is_music=1 "

    .line 213
    .local v2, "searchSelection":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_4

    const-string v4, "music_searchhelpertitle"

    .line 215
    .local v4, "trackFrom":Ljava/lang/String;
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP VIEW IF EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS SELECT * FROM audio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ORDER BY title_key;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP VIEW IF EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SELECT _id,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'artist\' AS mime_type,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id, NULL AS duration,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS album,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS title,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist AS text1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS text2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "number_of_albums AS data1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "number_of_tracks AS data2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/utils/SecAudioViewSchema;->ARTIST_KEY_ADD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS match,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1 AS grouporder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM music_artist_info WHERE (artist!=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UNION ALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SELECT _id,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'album\' AS mime_type,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id AS album_id, NULL AS duration,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS title,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album AS text1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist AS text2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "numsongs AS data1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS data2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist_key||\' \'||album_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/utils/SecAudioViewSchema;->ALBUM_KEY_ADD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS match,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2 AS grouporder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM music_album_info WHERE (album!=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UNION ALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "._id AS _id,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mime_type,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id, duration,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title AS text1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist AS text2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS data1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NULL AS data2,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "artist_key||\' \'||album_key||\' \'||title_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/utils/SecAudioViewSchema;->TRACK_KEY_ADD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS match,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'content://media/external/audio/media/\'||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "._id AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "suggest_intent_data,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3 AS grouporder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE (title != \'\') "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    return-void

    .line 208
    .end local v0    # "musicOnly":Z
    .end local v1    # "searchHelperView":Ljava/lang/String;
    .end local v2    # "searchSelection":Ljava/lang/String;
    .end local v3    # "searchView":Ljava/lang/String;
    .end local v4    # "trackFrom":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v0    # "musicOnly":Z
    :cond_1
    const-string v1, "searchhelpertitle"

    goto/16 :goto_1

    .line 211
    .restart local v1    # "searchHelperView":Ljava/lang/String;
    :cond_2
    const-string v3, "search"

    goto/16 :goto_2

    .line 212
    .restart local v3    # "searchView":Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto/16 :goto_3

    .line 213
    .restart local v2    # "searchSelection":Ljava/lang/String;
    :cond_4
    const-string v4, "searchhelpertitle"

    goto/16 :goto_4
.end method

.method private static refreshAlbumCacheInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 294
    return-void
.end method

.method private static refreshArtistCacheInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 310
    return-void
.end method

.method public static updateMusicCacheMapTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 287
    sget-object v0, Lcom/android/providers/media/utils/SecAudioViewSchema;->TAG:Ljava/lang/String;

    const-string v1, "updateMusicCacheMapTable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->refreshAlbumCacheInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 290
    invoke-static {p0}, Lcom/android/providers/media/utils/SecAudioViewSchema;->refreshArtistCacheInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    return-void
.end method
