.class public Lcom/android/providers/settings/SettingsProviderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProviderReceiver.java"


# static fields
.field public static mSalesCode:Ljava/lang/String;


# instance fields
.field public isSupportLightSensor:Z

.field private mContext:Landroid/content/Context;

.field protected final mOpenHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mOpenHelpers:Landroid/util/SparseArray;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportLightSensor:Z

    return-void
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 388
    sget-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 389
    sget-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;

    .line 421
    .local v0, "br":Ljava/io/BufferedReader;
    .local v4, "fr":Ljava/io/FileReader;
    :goto_0
    return-object v6

    .line 392
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    const/4 v4, 0x0

    .line 393
    .restart local v4    # "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 396
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "fe":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 414
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    if-eqz v4, :cond_1

    .line 415
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 416
    :cond_1
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 421
    .end local v3    # "fe":Ljava/io/File;
    :cond_2
    :goto_2
    sget-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;

    goto :goto_0

    .line 403
    .restart local v3    # "fe":Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v6, "SettingsProviderReceiver"

    const-string v7, "mps_code.dat does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 406
    .end local v3    # "fe":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v6, "SettingsProviderReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not Found exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    if-eqz v4, :cond_4

    .line 415
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 416
    :cond_4
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 418
    :catch_1
    move-exception v6

    goto :goto_2

    .line 409
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 410
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/SettingsProviderReceiver;->mSalesCode:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 414
    if-eqz v4, :cond_5

    .line 415
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 416
    :cond_5
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 418
    :catch_3
    move-exception v6

    goto :goto_2

    .line 413
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 414
    :goto_5
    if-eqz v4, :cond_6

    .line 415
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 416
    :cond_6
    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 419
    :cond_7
    :goto_6
    throw v6

    .line 418
    :catch_4
    move-exception v7

    goto :goto_6

    .line 413
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fe":Ljava/io/File;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 409
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 406
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 418
    :catch_9
    move-exception v6

    goto :goto_2
.end method

.method private hasSPenFeature()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSensorHubFeature()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isChinaModel()Z
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDualFolderModel(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFolderModel(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSupportPenUsp10()Z
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "uspLevel":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteDatabasetoReset(Landroid/content/Context;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->getSalesCode()Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "sales_code":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e005d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 79
    .local v10, "mDefaultBrightness":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_brightness"

    const/16 v22, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 81
    const-string v20, "sensor"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/SensorManager;

    .line 82
    .local v15, "sensorMgr":Landroid/hardware/SensorManager;
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v14

    .line 83
    .local v14, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_1

    .line 84
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Sensor;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Sensor;->getType()I

    move-result v16

    .line 85
    .local v16, "sensorType":I
    const/16 v20, 0x5

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 86
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportLightSensor:Z

    .line 83
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 89
    .end local v16    # "sensorType":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1120029

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 90
    .local v5, "config_val":Z
    const-string v20, "SettingsProviderReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isSupportLightSensor= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportLightSensor:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", config_val= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v20, "MTR"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_brightness_mode"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 97
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportLightSensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "display_outdoor_mode"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 101
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f040005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_14

    const/4 v4, 0x1

    .line 102
    .local v4, "auto_rotation":I
    :goto_2
    const-string v20, "ro.accelerometer_rotation"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 103
    const-string v20, "SettingsProviderReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "def_accelerometer_rotation : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v20, "MTR"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "accelerometer_rotation"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 111
    :goto_3
    const-string v20, "BNN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsProviderReceiver;->isDualFolderModel(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_16

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsProviderReceiver;->isFolderModel(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 112
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_timeout"

    const v22, 0x1d4c0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 117
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "default_vibration_pattern"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060010

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "set_shortcuts_mode"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    const-string v20, "2016A"

    const-string v21, "ro.build.scafe.version"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "tap_to_icon"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_pocket"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 135
    const-string v20, "ro.button_key_light"

    const/16 v21, 0x5dc

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 136
    .local v11, "mDefaultButtonKeyLight":I
    const-string v20, "ATT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 137
    const-string v20, "ro.button_key_light"

    const/16 v21, 0x1770

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 139
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "button_key_light"

    const/16 v22, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "display_battery_percentage"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->hasHaptic()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isEnableIntensity()Z

    move-result v20

    if-nez v20, :cond_17

    .line 144
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "haptic_feedback_enabled"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 151
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isJapanModel()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "sip_key_feedback_sound"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "sip_key_feedback_vibration"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 159
    :goto_6
    const-string v20, "MTR"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "AIO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 160
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_sounds_enabled"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 165
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_DefDialingKeypadTone"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1d

    .line 166
    const-string v20, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Setting_DefDialingKeypadTone"

    const-string v23, "ON"

    invoke-virtual/range {v21 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dtmf_tone"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 179
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isAllNAVendor()Z

    move-result v20

    if-eqz v20, :cond_20

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "sound_effects_enabled"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 189
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f040028

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 191
    .local v8, "isDefaultTrue":Z
    if-nez v8, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isChinaModel()Z

    move-result v20

    if-eqz v20, :cond_22

    .line 192
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "vibrate_on"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    .line 196
    .local v18, "vibrateSetting":I
    :goto_a
    and-int/lit8 v20, v18, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    const/16 v19, 0x1

    .line 197
    .local v19, "vibrateWhenRinging":Z
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "vibrate_when_ringing"

    if-eqz v19, :cond_24

    const/16 v20, 0x1

    :goto_c
    const/16 v23, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "any_screen_enabled"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 202
    const-string v20, "NZC"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "USC"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "ACG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "LRA"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "2DX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    .line 204
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dualclock_menu_settings"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 208
    :goto_d
    const-string v20, "ro.build.characteristics"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "deviceType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 210
    .local v9, "isTablet":Z
    if-eqz v6, :cond_a

    .line 211
    const-string v20, "tablet"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 213
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_mode_automatic_setting"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 214
    if-eqz v9, :cond_b

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_mode_setting"

    const/16 v22, 0x4

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 221
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "intelligent_sleep_mode"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_pointer"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_writing_buddy"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_detachment_alert"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->hasSPenFeature()Z

    move-result v20

    if-nez v20, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v20

    const-string v21, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 228
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportPenUsp10()Z

    move-result v17

    .line 230
    .local v17, "supportPenUsp10":Z
    if-eqz v17, :cond_26

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_detect_mode_disabled"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 236
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_detachment_option"

    const/16 v22, 0x2

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_detachment_notification"

    const-string v22, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_writing_sound"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_attach_detach_vibration"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_information_preview"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_icon_label"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_list_scroll"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_link_preview"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 246
    if-eqz v17, :cond_27

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_air_menu"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 252
    :goto_f
    if-eqz v17, :cond_d

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "air_cmd_use_minimized"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "air_cmd_detachment_option"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 257
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "spen_feedback_sound"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isEnableIntensity()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "spen_feedback_haptic"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 263
    :cond_e
    if-eqz v17, :cond_f

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "action_memo_on_off_screen"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 271
    .end local v17    # "supportPenUsp10":Z
    :cond_f
    const-string v20, "USC"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_28

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "emergency_tone"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 277
    :goto_10
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v20

    const-string v21, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_29

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dock_sounds_enabled"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 287
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f05000d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "VIB_RECVCALL_MAGNITUDE"

    const/16 v22, 0x5

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "VIB_NOTIFICATION_MAGNITUDE"

    const/16 v22, 0x5

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "volume_waiting_tone"

    const/16 v22, 0x2

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "led_indicator_charing"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "led_indicator_low_battery"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "led_indicator_missed_event"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "led_indicator_voice_recording"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "charging_sounds_enabled"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    const-string v20, "VZW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "automatic_unlock"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 314
    :goto_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "mLockScreenPolicy":Ljava/lang/String;
    const-string v20, "ResetWallpaperBySoftReset"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_wallpaper_path"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 321
    :cond_10
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v20

    const-string v21, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2f

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "master_motion"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_engine"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->hasSensorHubFeature()Z

    move-result v20

    if-nez v20, :cond_2b

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 329
    :goto_13
    const-string v20, "VZW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    const-string v20, "AIO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 330
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up_to_call_out"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 334
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_merged_mute_pause"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 335
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v20

    const-string v21, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2d

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_overturn"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 340
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "surface_palm_touch"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 341
    const-string v20, "AIO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "surface_palm_swipe"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 356
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "db_popup_view_shortcut"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enable_smart_capture"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "nearby_scanning_enabled"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 364
    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    return-void

    .line 95
    .end local v4    # "auto_rotation":I
    .end local v6    # "deviceType":Ljava/lang/String;
    .end local v8    # "isDefaultTrue":Z
    .end local v9    # "isTablet":Z
    .end local v11    # "mDefaultButtonKeyLight":I
    .end local v12    # "mLockScreenPolicy":Ljava/lang/String;
    .end local v18    # "vibrateSetting":I
    .end local v19    # "vibrateWhenRinging":Z
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_brightness_mode"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/settings/SettingsProviderReceiver;->isSupportLightSensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    if-eqz v5, :cond_13

    const/16 v20, 0x1

    :goto_17
    const/16 v23, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1

    :cond_13
    const/16 v20, 0x0

    goto :goto_17

    .line 101
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 108
    .restart local v4    # "auto_rotation":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "accelerometer_rotation"

    const/16 v22, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    .line 114
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_timeout"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f050000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 145
    .restart local v11    # "mDefaultButtonKeyLight":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProviderReceiver;->isAllNAVendor()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "haptic_feedback_enabled"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_5

    .line 148
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "haptic_feedback_enabled"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v23, 0x7f040007

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v20, 0x1

    :goto_18
    const/16 v23, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_5

    :cond_19
    const/16 v20, 0x0

    goto :goto_18

    .line 155
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "sip_key_feedback_sound"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "sip_key_feedback_vibration"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_6

    .line 162
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_sounds_enabled"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f050006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 169
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dtmf_tone"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_8

    .line 172
    :cond_1d
    const-string v20, "AIO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dtmf_tone"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_8

    .line 175
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "dtmf_tone"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v23, 0x7f040020

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v20, 0x1

    :goto_19
    const/16 v23, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_8

    :cond_1f
    const/16 v20, 0x0

    goto :goto_19

    .line 182
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "sound_effects_enabled"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v23, 0x7f040021

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_21

    const/16 v20, 0x1

    :goto_1a
    const/16 v23, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_9

    :cond_21
    const/16 v20, 0x0

    goto :goto_1a

    .line 194
    .restart local v8    # "isDefaultTrue":Z
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "vibrate_on"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    .restart local v18    # "vibrateSetting":I
    goto/16 :goto_a

    .line 196
    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 197
    .restart local v19    # "vibrateWhenRinging":Z
    :cond_24
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 206
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dualclock_menu_settings"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_d

    .line 233
    .restart local v6    # "deviceType":Ljava/lang/String;
    .restart local v9    # "isTablet":Z
    .restart local v17    # "supportPenUsp10":Z
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_detect_mode_disabled"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_e

    .line 249
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering_air_menu"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_f

    .line 274
    .end local v17    # "supportPenUsp10":Z
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "emergency_tone"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_10

    .line 281
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dock_sounds_enabled"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f050005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_11

    .line 310
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "automatic_unlock"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_12

    .line 327
    .restart local v12    # "mLockScreenPolicy":Ljava/lang/String;
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_13

    .line 332
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up_to_call_out"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_14

    .line 338
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_overturn"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_15

    .line 344
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "surface_palm_swipe"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_16

    .line 347
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "master_motion"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_engine"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_pick_up_to_call_out"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_merged_mute_pause"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "motion_overturn"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "surface_palm_touch"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "surface_palm_swipe"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_16
.end method

.method public hasHaptic()Z
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 450
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAllNAVendor()Z
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BNN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    :cond_0
    const/4 v1, 0x1

    .line 440
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableIntensity()Z
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 455
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isJapanModel()Z
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderReceiver;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SettingsProviderReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/providers/settings/SettingsProviderReceiver;->deleteDatabasetoReset(Landroid/content/Context;I)V

    .line 61
    :cond_0
    return-void
.end method
