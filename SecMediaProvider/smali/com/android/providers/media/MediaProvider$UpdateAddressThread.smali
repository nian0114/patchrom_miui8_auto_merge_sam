.class Lcom/android/providers/media/MediaProvider$UpdateAddressThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateAddressThread"
.end annotation


# instance fields
.field private address:[Landroid/os/Parcelable;

.field private context:Landroid/content/Context;

.field private location:[Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;[Landroid/os/Parcelable;[Landroid/os/Parcelable;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "address"    # [Landroid/os/Parcelable;
    .param p4, "location"    # [Landroid/os/Parcelable;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1161
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->context:Landroid/content/Context;

    .line 1162
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->address:[Landroid/os/Parcelable;

    .line 1163
    iput-object p4, p0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->location:[Landroid/os/Parcelable;

    .line 1164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 1168
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v13, "idList":Ljava/util/ArrayList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v11, "dcmIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->address:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v12, v2, :cond_3

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->location:[Landroid/os/Parcelable;

    aget-object v2, v2, v12

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 1176
    .local v14, "la":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->location:[Landroid/os/Parcelable;

    aget-object v2, v2, v12

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1177
    .local v20, "lo":D
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    add-double v18, v14, v2

    .line 1178
    .local v18, "latitudeMore":D
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    add-double v24, v20, v2

    .line 1179
    .local v24, "longitudeMore":D
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    sub-double v16, v14, v2

    .line 1180
    .local v16, "latitudeLess":D
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    sub-double v22, v20, v2

    .line 1181
    .local v22, "longitudeLess":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->address:[Landroid/os/Parcelable;

    aget-object v2, v2, v12

    check-cast v2, Landroid/location/Address;

    # invokes: Lcom/android/providers/media/MediaProvider;->makeAddressAsString(Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v8

    .line 1182
    .local v8, "addr":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v2, "null"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "media_type=1 AND latitude>? AND latitude<? AND longitude>? AND longitude<? AND addr is null AND langagecode is null"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1191
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1192
    :cond_0
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    const-string v2, "external"

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";images"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1204
    :catchall_0
    move-exception v2

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :cond_1
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1207
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1208
    .local v27, "values":Landroid/content/ContentValues;
    const-string v2, "addr"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v2, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "media_type=1 AND latitude>? AND latitude<? AND longitude>? AND longitude<? AND addr is null AND langagecode is null"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1174
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v27    # "values":Landroid/content/ContentValues;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1217
    :cond_2
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "address value is null or starts with null. Do not update! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1227
    .end local v8    # "addr":Ljava/lang/String;
    .end local v14    # "la":D
    .end local v16    # "latitudeLess":D
    .end local v18    # "latitudeMore":D
    .end local v20    # "lo":D
    .end local v22    # "longitudeLess":D
    .end local v24    # "longitudeMore":D
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1228
    new-instance v26, Landroid/content/Intent;

    const-string v2, "com.samsung.notify_update_address"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v26, "notifyIntent":Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1230
    .local v9, "b":Landroid/os/Bundle;
    const-string v2, "media_ids"

    invoke-virtual {v9, v2, v13}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1231
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1233
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcast com.samsung.notify_update_address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v11}, Lcom/android/providers/media/MediaProvider;->updateDCMLocation(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1239
    .end local v9    # "b":Landroid/os/Bundle;
    .end local v26    # "notifyIntent":Landroid/content/Intent;
    :cond_4
    return-void
.end method
