.class public Lcom/android/providers/media/MediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "storageManager":Landroid/os/storage/StorageManager;
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 140
    .restart local v1    # "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 141
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_1

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 143
    aget-object v3, v2, v0

    .line 144
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    const-string v4, "sd"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 151
    .end local v0    # "i":I
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v4

    .line 142
    .restart local v0    # "i":I
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v4, "MediaScannerReceiver"

    const-string v5, "The storageVolumes is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 134
    .local v1, "privateDir":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 128
    .end local v1    # "privateDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    .line 133
    .restart local v1    # "privateDir":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v1    # "privateDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    .restart local v1    # "privateDir":Ljava/lang/String;
    goto :goto_0
.end method

.method private scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v1, "dev.bootcomplete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v1, "dev.bootcomplete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 47
    .local v13, "uri":Landroid/net/Uri;
    const-string v14, "MediaScannerReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 50
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v7, "initialValues":Landroid/content/ContentValues;
    const-string v14, "title"

    invoke-virtual {v7, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore;->getMediaProviderDbLogUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "initialValues":Landroid/content/ContentValues;
    :goto_0
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 59
    const-string v14, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const-string v14, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v4

    .line 54
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "MediaScannerReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed to save LogToDb, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v14, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 63
    const-string v14, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_2
    const-string v14, "com.samsung.USER_FOREGROUND_MEDIASCAN_LAUNCH"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 66
    const-string v14, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_3
    const-string v14, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 68
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.process.media.LOCALE_CHANGED_AND_SCAN"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v9, "newIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 71
    .end local v9    # "newIntent":Landroid/content/Intent;
    :cond_4
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "file"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 73
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "externalStoragePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "legacyPath":Ljava/lang/String;
    :try_start_1
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 83
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 84
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 87
    :cond_5
    const-string v14, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 89
    const-string v14, "MediaScannerReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaScannerReceiver;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "externalStorageSdPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaScannerReceiver;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "privatePath":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 93
    const-string v14, "external_sd"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    .end local v6    # "externalStorageSdPath":Ljava/lang/String;
    .end local v11    # "privatePath":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 80
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "MediaScannerReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "couldn\'t canonicalize "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 94
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "externalStorageSdPath":Ljava/lang/String;
    .restart local v11    # "privatePath":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 95
    const-string v14, "external_private"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    :cond_7
    const-string v14, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    .end local v6    # "externalStorageSdPath":Ljava/lang/String;
    .end local v11    # "privatePath":Ljava/lang/String;
    :cond_8
    const-string v14, "com.samsung.MEDIA_SCAN"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 100
    const-string v14, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :cond_9
    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v10, :cond_d

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaScannerReceiver;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .restart local v6    # "externalStorageSdPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaScannerReceiver;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .restart local v11    # "privatePath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v6, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 105
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/media/MediaScannerReceiver;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_b
    if-eqz v11, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/media/MediaScannerReceiver;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :cond_c
    const-string v14, "MediaScannerReceiver"

    const-string v15, "< Scan Secret Single File is called but not mounted >"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    .end local v6    # "externalStorageSdPath":Ljava/lang/String;
    .end local v11    # "privatePath":Ljava/lang/String;
    :cond_d
    const-string v14, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 114
    const-string v14, "storage_volume"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 115
    .local v12, "storage":Landroid/os/storage/StorageVolume;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.DB_CLEAN"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v9    # "newIntent":Landroid/content/Intent;
    const-string v14, "storage_volume"

    invoke-virtual {v9, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    const-string v14, "MediaScannerReceiver"

    const-string v15, "android.intent.action.DB_CLEAN broadcast"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
