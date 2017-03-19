.class Lcom/android/providers/media/MediaProvider$RequestAddressThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestAddressThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1091
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->context:Landroid/content/Context;

    .line 1092
    return-void
.end method

.method private requestLocationToAddress([I[D[D)V
    .locals 5
    .param p1, "id"    # [I
    .param p2, "latitude"    # [D
    .param p3, "longitude"    # [D

    .prologue
    const/4 v4, 0x0

    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.get_address_poi"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->context:Landroid/content/Context;

    aget v3, p1, v4

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1097
    .local v1, "pi":Landroid/app/PendingIntent;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mLocationManager:Lcom/samsung/location/SLocationManager;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/samsung/location/SLocationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mLocationManager:Lcom/samsung/location/SLocationManager;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/samsung/location/SLocationManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lcom/samsung/location/SLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    .line 1100
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "latitude"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "longitude"

    aput-object v8, v6, v7

    const-string v7, "latitude is not null AND longitude is not null AND addr is null"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1109
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1110
    const/4 v11, 0x0

    .line 1111
    .local v11, "i":I
    const/16 v4, 0xa

    new-array v12, v4, [I

    .line 1112
    .local v12, "id":[I
    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1113
    const/16 v4, 0xa

    new-array v14, v4, [D

    .line 1114
    .local v14, "latitude":[D
    const/16 v4, 0xa

    new-array v15, v4, [D

    .line 1115
    .local v15, "longitude":[D
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1116
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v12, v11

    .line 1117
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v14, v11

    .line 1118
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v15, v11

    .line 1120
    add-int/lit8 v11, v11, 0x1

    .line 1121
    const/16 v4, 0xa

    if-lt v11, v4, :cond_0

    .line 1122
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->requestLocationToAddress([I[D[D)V

    .line 1123
    const/4 v11, 0x0

    .line 1124
    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1125
    const-wide/16 v4, 0x0

    invoke-static {v14, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 1126
    const-wide/16 v4, 0x0

    invoke-static {v15, v4, v5}, Ljava/util/Arrays;->fill([DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1151
    .end local v11    # "i":I
    .end local v12    # "id":[I
    .end local v14    # "latitude":[D
    .end local v15    # "longitude":[D
    :catchall_0
    move-exception v4

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1129
    .restart local v11    # "i":I
    .restart local v12    # "id":[I
    .restart local v14    # "latitude":[D
    .restart local v15    # "longitude":[D
    :cond_1
    if-lez v11, :cond_5

    .line 1130
    const/16 v16, 0x0

    .line 1131
    .local v16, "num":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    const/16 v4, 0xa

    if-ge v13, v4, :cond_2

    .line 1132
    :try_start_1
    aget v4, v12, v13

    if-nez v4, :cond_3

    .line 1133
    move/from16 v16, v13

    .line 1137
    :cond_2
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1138
    .local v17, "remainId":[I
    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 1139
    .local v18, "remainLatitude":[D
    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 1140
    .local v19, "remainLongitude":[D
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 1141
    aget v4, v12, v13

    aput v4, v17, v13

    .line 1142
    aget-wide v4, v14, v13

    aput-wide v4, v18, v13

    .line 1143
    aget-wide v4, v15, v13

    aput-wide v4, v19, v13

    .line 1140
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1131
    .end local v17    # "remainId":[I
    .end local v18    # "remainLatitude":[D
    .end local v19    # "remainLongitude":[D
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1145
    .restart local v17    # "remainId":[I
    .restart local v18    # "remainLatitude":[D
    .restart local v19    # "remainLongitude":[D
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider$RequestAddressThread;->requestLocationToAddress([I[D[D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    .end local v11    # "i":I
    .end local v12    # "id":[I
    .end local v13    # "j":I
    .end local v14    # "latitude":[D
    .end local v15    # "longitude":[D
    .end local v16    # "num":I
    .end local v17    # "remainId":[I
    .end local v18    # "remainLatitude":[D
    .end local v19    # "remainLongitude":[D
    :cond_5
    :goto_3
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1153
    return-void

    .line 1148
    :cond_6
    :try_start_2
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "There is no image files to update address and langagecode fields"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
