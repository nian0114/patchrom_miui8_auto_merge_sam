.class Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mFolderTypeFeature:I

.field public static mSalesCode:Ljava/lang/String;

.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAutomaticAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mUserHandle:I

.field private recordSettings:Ljava/lang/String;

.field private sales_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/settings/DatabaseHelper;->mFolderTypeFeature:I

    .line 150
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "android_metadata"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 178
    invoke-static {p2}, Lcom/android/providers/settings/DatabaseHelper;->dbNameForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x76

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->recordSettings:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 180
    iput p2, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    .line 182
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->sales_code:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 226
    const-string v0, "CREATE TABLE global (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v0, "CREATE INDEX globalIndex1 ON global (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 217
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method static dbNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userHandle"    # I

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v1, "settings.db"

    .line 171
    :goto_0
    return-object v1

    .line 169
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2544
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2545
    .local v0, "country_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2546
    const-string v1, "SettingsProvider"

    const-string v2, "country code is empty"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    :cond_0
    return-object v0
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3610
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3611
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->sales_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->sales_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3613
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3615
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060013

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 3579
    const-string v0, "system"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 3584
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3585
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method private getOldDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 2478
    sget-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2479
    sget-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;

    .line 2511
    .local v0, "br":Ljava/io/BufferedReader;
    .local v4, "fr":Ljava/io/FileReader;
    :goto_0
    return-object v6

    .line 2482
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    const/4 v4, 0x0

    .line 2483
    .restart local v4    # "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2486
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v3, "fe":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2489
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2491
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 2504
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    if-eqz v4, :cond_1

    .line 2505
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2506
    :cond_1
    if-eqz v0, :cond_2

    .line 2507
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 2511
    .end local v3    # "fe":Ljava/io/File;
    :cond_2
    :goto_2
    sget-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;

    goto :goto_0

    .line 2493
    .restart local v3    # "fe":Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v6, "SettingsProvider"

    const-string v7, "mps_code.dat does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2496
    .end local v3    # "fe":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 2497
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v6, "SettingsProvider"

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

    .line 2498
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2504
    if-eqz v4, :cond_4

    .line 2505
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2506
    :cond_4
    if-eqz v0, :cond_2

    .line 2507
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 2508
    :catch_1
    move-exception v6

    goto :goto_2

    .line 2499
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 2500
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/settings/DatabaseHelper;->mSalesCode:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2504
    if-eqz v4, :cond_5

    .line 2505
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2506
    :cond_5
    if-eqz v0, :cond_2

    .line 2507
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 2508
    :catch_3
    move-exception v6

    goto :goto_2

    .line 2503
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2504
    :goto_5
    if-eqz v4, :cond_6

    .line 2505
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2506
    :cond_6
    if-eqz v0, :cond_7

    .line 2507
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2509
    :cond_7
    :goto_6
    throw v6

    .line 2508
    :catch_4
    move-exception v7

    goto :goto_6

    .line 2503
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

    .line 2499
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

    .line 2496
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

    .line 2508
    :catch_9
    move-exception v6

    goto :goto_2
.end method

.method private getSimMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2526
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 3590
    const/4 v8, 0x0

    .line 3592
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3594
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3595
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3596
    .local v9, "val":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 3599
    .end local p4    # "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3601
    .end local v9    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p4

    .restart local v9    # "val":Ljava/lang/String;
    .restart local p4    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p4, v9

    .line 3596
    goto :goto_0

    .line 3599
    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private hasSPenFeature()Z
    .locals 2

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

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
    .line 2552
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

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
    .line 2538
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2539
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
    .line 2530
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
    .line 2522
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3669
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3670
    .local v1, "enable":I
    const/4 v3, 0x2

    if-eq v3, v1, :cond_0

    const/4 v3, 0x3

    if-ne v3, v1, :cond_1

    .line 3677
    .end local v1    # "enable":I
    :cond_0
    :goto_0
    return v2

    .line 3674
    .restart local v1    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3676
    .end local v1    # "enable":I
    :catch_0
    move-exception v0

    .line 3677
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private isSupportPenUsp10()Z
    .locals 3

    .prologue
    .line 3624
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 3625
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

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2276
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2278
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2280
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f030000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 2281
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2283
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 2287
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2289
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2293
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2294
    .local v12, "name":Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2354
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 2298
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "type":I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2299
    .local v16, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2300
    .local v5, "cls":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2301
    .local v17, "shortcutStr":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2303
    .local v4, "category":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 2304
    .local v18, "shortcutValue":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2305
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2349
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 2350
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2311
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    .line 2312
    const/4 v10, 0x0

    .line 2313
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2315
    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 2328
    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2329
    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2330
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2331
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2341
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "title":Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2342
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2345
    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2347
    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2351
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .line 2352
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2316
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "depth":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :catch_2
    move-exception v8

    .line 2317
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2319
    .local v14, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2321
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 2322
    :catch_3
    move-exception v9

    .line 2323
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2332
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packages":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 2333
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2334
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v19, ""

    .restart local v19    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 2336
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3566
    return-void

    .line 3564
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    .line 3090
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f070000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 3092
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 3094
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 3097
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->hasHaptic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->isEnableIntensity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3098
    :cond_0
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3104
    :goto_0
    return-void

    .line 3099
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3100
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3102
    :cond_2
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private loadEasyModeApps(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2065
    const-string v0, "easy_mode_call"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2066
    const-string v0, "easy_mode_camera"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2067
    const-string v0, "easy_mode_clock"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2068
    const-string v0, "easy_mode_contacts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2069
    const-string v0, "easy_mode_email"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2070
    const-string v0, "easy_mode_gallery"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2071
    const-string v0, "easy_mode_home"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2072
    const-string v0, "easy_mode_internet"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2073
    const-string v0, "easy_mode_magnifier"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2074
    const-string v0, "easy_mode_messages"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2075
    const-string v0, "easy_mode_myfiles"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2076
    const-string v0, "easy_mode_music"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2077
    const-string v0, "easy_mode_phone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2078
    const-string v0, "easy_mode_splanner"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2079
    const-string v0, "easy_mode_video"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2080
    const-string v0, "easy_mode_voicerecorder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2081
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "base"    # I

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3576
    return-void
.end method

.method private loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3304
    const/4 v4, 0x0

    .line 3306
    .local v4, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v8, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 3310
    const-string v8, "airplane_mode_on"

    const v9, 0x7f040001

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3313
    const-string v8, "theater_mode_on"

    const v9, 0x7f040002

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3316
    const-string v8, "airplane_mode_radios"

    const/high16 v9, 0x7f060000

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3319
    const-string v8, "airplane_mode_toggleable_radios"

    const v9, 0x7f060001

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3322
    const-string v8, "assisted_gps_enabled"

    const v9, 0x7f04000c

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3325
    const-string v8, "auto_time"

    const v9, 0x7f040003

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3328
    const-string v8, "auto_time_zone"

    const v9, 0x7f040004

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3331
    const-string v9, "stay_on_while_plugged_in"

    const-string v8, "1"

    const-string v10, "ro.kernel.qemu"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f040022

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_0
    move v8, v6

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v4, v9, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3336
    const-string v8, "wifi_sleep_policy"

    const v9, 0x7f050003

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3339
    const-string v8, "mode_ringer"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3343
    const-string v8, "package_verifier_enable"

    const v9, 0x7f04000b

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3346
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3347
    const-string v8, "wifi_on"

    const-string v9, "1"

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3353
    :goto_1
    const-string v8, "wifi_networks_available_notification_on"

    const v9, 0x7f040010

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3356
    const-string v8, "bluetooth_on"

    const v9, 0x7f040008

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3360
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 3361
    const-string v8, "wifi_call_enable"

    const v9, 0x7f050016

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3363
    const-string v8, "SWC"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "VOD"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DRE"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "NEE"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "24412"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "24413"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "24201"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "23802"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    const-string v8, "THL"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "52001"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "52003"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "52074"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "52054"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "52005"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3366
    :cond_2
    const-string v8, "wifi_call_preferred"

    const v9, 0x7f05001a

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3378
    :goto_2
    const-string v8, "cdma_cell_broadcast_sms"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3382
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_DefRoamingDataState"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3384
    const-string v8, "data_roaming"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3392
    :goto_3
    const-string v8, "device_provisioned"

    const v9, 0x7f040018

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3395
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3397
    .local v0, "maxBytes":I
    if-lez v0, :cond_3

    .line 3398
    const-string v8, "download_manager_max_bytes_over_mobile"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3402
    :cond_3
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3404
    .local v3, "recommendedMaxBytes":I
    if-lez v3, :cond_4

    .line 3405
    const-string v8, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3410
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_ConfigDataStatus"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 3411
    const-string v8, "mobile_data"

    const-string v9, "true"

    const-string v10, "ro.com.android.mobiledata"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v8, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3422
    :goto_5
    const-string v6, "netstats_enabled"

    const v7, 0x7f04000d

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3425
    const-string v6, "usb_mass_storage_enabled"

    const v7, 0x7f04000e

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3428
    const-string v6, "wifi_max_dhcp_retry_count"

    const v7, 0x7f05000e

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3431
    const-string v6, "wifi_display_on"

    const v7, 0x7f040009

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3434
    const-string v6, "lock_sound"

    const v7, 0x7f060009

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3436
    const-string v6, "unlock_sound"

    const v7, 0x7f06000a

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3438
    const-string v6, "trusted_sound"

    const v7, 0x7f06000b

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3440
    const-string v6, "power_sounds_enabled"

    const v7, 0x7f050004

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3442
    const-string v6, "low_battery_sound"

    const v7, 0x7f060004

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3444
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 3446
    const-string v6, "dock_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3451
    :goto_6
    const-string v6, "desk_dock_sound"

    const v7, 0x7f060005

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3453
    const-string v6, "desk_undock_sound"

    const v7, 0x7f060006

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3455
    const-string v6, "car_dock_sound"

    const v7, 0x7f060007

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3457
    const-string v6, "car_undock_sound"

    const v7, 0x7f060008

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3459
    const-string v6, "wireless_charging_started_sound"

    const v7, 0x7f06000c

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3462
    const-string v6, "dock_audio_media_enabled"

    const v7, 0x7f050007

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3465
    const-string v6, "set_install_location"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3466
    const-string v6, "default_install_location"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3470
    const-string v6, "USC"

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->sales_code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 3471
    const-string v6, "emergency_tone"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3477
    :goto_7
    const-string v6, "call_auto_retry"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3482
    const-string v6, "ro.telephony.default_network"

    sget v7, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3484
    .local v1, "networkType":Ljava/lang/String;
    const-string v6, "preferred_network_mode"

    invoke-direct {p0, v4, v6, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3489
    const-string v6, "ro.telephony.default_cdma_sub"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3491
    .local v5, "type":I
    const-string v6, "subscription_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3493
    const-string v6, "low_battery_sound_timeout"

    const v7, 0x7f05000f

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3496
    const-string v6, "wifi_scan_always_enabled"

    const v7, 0x7f050010

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3499
    const-string v6, "heads_up_notifications_enabled"

    const v7, 0x7f050012

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3502
    const-string v6, "device_name"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3504
    const-string v6, "guest_user_enabled"

    const v7, 0x7f040026

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3506
    const-string v6, "volte_vt_enabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3509
    const-string v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3512
    const-string v6, "2016A"

    const-string v7, "ro.build.scafe.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3513
    const-string v6, "tap_to_icon"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3517
    :cond_5
    const-string v6, "charging_sounds_enabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3520
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3521
    const-string v6, "auto_swipe_main_user"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3527
    :goto_8
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3528
    .local v2, "product_name":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v6, "o7lte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3529
    const-string v6, "window_animation_scale"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3530
    const-string v6, "transition_animation_scale"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3531
    const-string v6, "animator_duration_scale"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3534
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->isAllNAVendor()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3535
    const-string v6, "dnd_allowexception"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3538
    :cond_7
    const-string v6, "low_power_back_data_off"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3548
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3550
    :cond_8
    return-void

    .end local v0    # "maxBytes":I
    .end local v1    # "networkType":Ljava/lang/String;
    .end local v2    # "product_name":Ljava/lang/String;
    .end local v3    # "recommendedMaxBytes":I
    .end local v5    # "type":I
    :cond_9
    move v8, v7

    .line 3331
    goto/16 :goto_0

    .line 3349
    :cond_a
    :try_start_1
    const-string v8, "wifi_on"

    const v9, 0x7f04000f

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3548
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b
    throw v6

    .line 3367
    :cond_c
    :try_start_2
    const-string v8, "NEE"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "THL"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSimMCCMNC()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3368
    const-string v8, "SettingsProvider"

    const-string v9, "sim not ready - do not setting default value here"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3370
    :cond_e
    const-string v8, "wifi_call_preferred"

    const v9, 0x7f050019

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3374
    :cond_f
    const-string v8, "wifi_call_enable"

    const v9, 0x7f050017

    invoke-direct {p0, v4, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3386
    :cond_10
    const-string v9, "data_roaming"

    const-string v8, "true"

    const-string v10, "ro.com.android.dataroaming"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v8, v6

    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v4, v9, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_11
    move v8, v7

    goto :goto_9

    .restart local v0    # "maxBytes":I
    .restart local v3    # "recommendedMaxBytes":I
    :cond_12
    move v6, v7

    .line 3411
    goto/16 :goto_4

    .line 3416
    :cond_13
    const-string v8, "mobile_data"

    const-string v9, "true"

    const-string v10, "ro.com.android.mobiledata"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v8, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_14
    move v6, v7

    goto :goto_a

    .line 3448
    :cond_15
    const-string v6, "dock_sounds_enabled"

    const v7, 0x7f050005

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 3473
    :cond_16
    const-string v6, "emergency_tone"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 3523
    .restart local v1    # "networkType":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_17
    const-string v6, "auto_swipe_main_user"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3571
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 3296
    const-string v0, "backup_enabled"

    const v1, 0x7f040011

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3299
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3301
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3107
    const/4 v2, 0x0

    .line 3109
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v7, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 3112
    const-string v7, "location_providers_allowed"

    const v8, 0x7f060002

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3115
    const-string v7, "ro.com.android.wifi-watchlist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3116
    .local v4, "wifiWatchList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3117
    const-string v7, "wifi_watchdog_watch_list"

    invoke-direct {p0, v2, v7, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3125
    :cond_0
    const-string v7, "mock_location"

    const-string v8, "1"

    const-string v9, "ro.allow.mock.location"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v7, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3128
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 3130
    const-string v5, "mount_play_not_snd"

    const v7, 0x7f040013

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3133
    const-string v5, "mount_ums_autostart"

    const v7, 0x7f040014

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3136
    const-string v5, "mount_ums_prompt"

    const v7, 0x7f040015

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3139
    const-string v5, "mount_ums_notify_enabled"

    const v7, 0x7f040016

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3142
    const-string v5, "accessibility_script_injection"

    const v7, 0x7f04001b

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3145
    const-string v5, "accessibility_web_content_key_bindings"

    const v7, 0x7f06000e

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3148
    const-string v5, "long_press_timeout"

    const v7, 0x7f05000b

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3151
    const-string v5, "touch_exploration_enabled"

    const v7, 0x7f04001d

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3154
    const-string v5, "speak_password"

    const v7, 0x7f04001c

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3157
    const-string v5, "accessibility_script_injection_url"

    const v7, 0x7f06000f

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3161
    const-string v5, "USA"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CAN"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "XAR"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "XAC"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3163
    :cond_2
    const-string v5, "accessibility_sec_captioning_enabled"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3169
    :goto_0
    const-string v5, "accessibility_large_cursor"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3171
    const-string v5, "sm_connectivity_disable"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3172
    const-string v5, "sm_connectivity_time_id"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3174
    const-string v5, "ro.lockscreen.disable.default"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v6, :cond_b

    .line 3175
    const-string v5, "lockscreen.disabled"

    const-string v6, "1"

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3181
    :goto_1
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->hasSPenFeature()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3182
    const-string v5, "lock_screen_quick_note"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3185
    :cond_3
    const-string v5, "screensaver_enabled"

    const v6, 0x112006e

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3188
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3190
    const-string v5, "screensaver_activate_on_dock"

    const v6, 0x112006f

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3192
    const-string v5, "screensaver_activate_on_sleep"

    const v6, 0x1120070

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3201
    :goto_2
    const-string v5, "screensaver_components"

    const v6, 0x1040041

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3203
    const-string v5, "screensaver_default_component"

    const v6, 0x1040041

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3206
    const-string v5, "accessibility_display_magnification_enabled"

    const v6, 0x7f04001e

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3209
    const-string v5, "accessibility_display_magnification_scale"

    const v6, 0x7f070002

    const/4 v7, 0x1

    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 3212
    const-string v5, "accessibility_display_magnification_auto_update"

    const v6, 0x7f04001f

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3216
    iget v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_d

    .line 3217
    const-string v5, "user_setup_complete"

    const v6, 0x7f040023

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3223
    :goto_3
    const-string v5, "immersive_mode_confirmations"

    const v6, 0x7f060011

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3226
    const-string v5, "install_non_market_apps"

    const v6, 0x7f04000a

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3229
    const-string v5, "wake_gesture_enabled"

    const v6, 0x7f040025

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3233
    const-string v5, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ATT"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3235
    :cond_4
    const-string v5, "lockscreen.power_button_instantly_locks"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3238
    :cond_5
    const-string v5, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3239
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "AIO"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3240
    :cond_6
    const-string v5, "lock_screen_lock_after_timeout"

    const v6, 0x927c0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3248
    :goto_4
    const-string v5, "lock_screen_show_notifications"

    const v6, 0x7f050011

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3251
    const-string v5, "lock_screen_allow_private_notifications"

    const v6, 0x7f040024

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3254
    const-string v5, "sleep_timeout"

    const v6, 0x7f050001

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3258
    const-string v5, "accessibility_large_cursor"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3261
    const-string v5, "accessibility_hwkey_doubletap_enabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3264
    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, "samsungMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3266
    .local v3, "vzwMessages":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3267
    .local v1, "softBankMessages":Ljava/lang/String;
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Lcom/android/providers/settings/DatabaseHelper;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3268
    const-string v5, "sms_default_application"

    const v6, 0x7f06001c

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3276
    :cond_7
    :goto_5
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3277
    const-string v5, "auto_swipe_main_user"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3291
    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3293
    :cond_8
    return-void

    .line 3165
    .end local v0    # "samsungMessage":Ljava/lang/String;
    .end local v1    # "softBankMessages":Ljava/lang/String;
    .end local v3    # "vzwMessages":Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string v5, "accessibility_sec_captioning_enabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v5, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3291
    .end local v4    # "wifiWatchList":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a
    throw v5

    .line 3177
    .restart local v4    # "wifiWatchList":Ljava/lang/String;
    :cond_b
    :try_start_2
    const-string v5, "lockscreen.disabled"

    const v6, 0x7f040017

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3195
    :cond_c
    const-string v5, "screensaver_activate_on_dock"

    const v6, 0x1120070

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 3197
    const-string v5, "screensaver_activate_on_sleep"

    const v6, 0x112006f

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3220
    :cond_d
    const-string v5, "user_setup_complete"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3242
    :cond_e
    const-string v5, "lock_screen_lock_after_timeout"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 3245
    :cond_f
    const-string v5, "lock_screen_lock_after_timeout"

    const/16 v6, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 3269
    .restart local v0    # "samsungMessage":Ljava/lang/String;
    .restart local v1    # "softBankMessages":Ljava/lang/String;
    .restart local v3    # "vzwMessages":Ljava/lang/String;
    :cond_10
    const-string v5, "SBM"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1}, Lcom/android/providers/settings/DatabaseHelper;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3270
    const-string v5, "sms_default_application"

    const v6, 0x7f06001d

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 3271
    :cond_11
    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Lcom/android/providers/settings/DatabaseHelper;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3272
    const-string v5, "sms_default_application"

    const v6, 0x7f06001b

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 3279
    :cond_12
    const-string v5, "auto_swipe_main_user"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 3553
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3554
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3555
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3556
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2469
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2470
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2472
    iget v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v0, :cond_0

    .line 2473
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2475
    :cond_0
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3561
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2556
    const/16 v22, 0x0

    .line 2558
    .local v22, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v25, "ro.build.characteristics"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2559
    .local v8, "deviceType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2560
    .local v10, "isTablet":Z
    if-eqz v8, :cond_0

    .line 2561
    const-string v25, "tablet"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 2564
    :cond_0
    const-string v25, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v22

    .line 2567
    const-string v25, "dim_screen"

    const/high16 v26, 0x7f040000

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2569
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v18

    .line 2570
    .local v18, "sales_code":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 2571
    const-string v25, "ril.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2573
    :cond_1
    const-string v25, "ro.csc.country_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2574
    .local v6, "country_code":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2575
    const-string v25, "SettingsProvider"

    const-string v26, "country code is empty"

    invoke-static/range {v25 .. v26}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    :cond_2
    const-string v25, "BNN"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->isDualFolderModel(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->isFolderModel(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 2578
    :cond_3
    const-string v25, "screen_off_timeout"

    const v26, 0x1d4c0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2585
    :goto_0
    const-string v25, "dtmf_tone_type"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2587
    const-string v25, "default_vibration_pattern"

    const v26, 0x7f060010

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2590
    const-string v25, "hearing_aid"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2593
    const-string v25, "access_control_power_button"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2594
    const-string v25, "access_control_volume_button"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2595
    const-string v25, "access_control_keyboard_block"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2596
    const-string v25, "access_control_time_set_hour"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2597
    const-string v25, "access_control_time_set_min"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2600
    const-string v25, "SPR"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "VMU"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "BST"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "XAS"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2602
    :cond_4
    const-string v25, "rapid_key_input"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2603
    const-string v25, "rapid_key_input_menu_checked"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2607
    :cond_5
    const-string v25, "torch_light"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2610
    const-string v25, "personal_mode_enabled"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2613
    const-string v25, "applock_lock_type"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2616
    const-string v25, "flash_notification"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2618
    const-string v25, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2620
    const-string v25, "anykey_mode"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2623
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2624
    const-string v25, "call_answer_vib"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2628
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 2629
    const-string v25, "master_motion"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2630
    const-string v25, "motion_engine"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2631
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->hasSensorHubFeature()Z

    move-result v25

    if-nez v25, :cond_d

    .line 2632
    const-string v25, "motion_pick_up"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2636
    :goto_1
    const-string v25, "VZW"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string v25, "AIO"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 2637
    :cond_8
    const-string v25, "motion_pick_up_to_call_out"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2641
    :goto_2
    const-string v25, "motion_merged_mute_pause"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2642
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 2643
    const-string v25, "motion_overturn"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2647
    :goto_3
    const-string v25, "surface_palm_touch"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2648
    const-string v25, "AIO"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 2649
    const-string v25, "surface_palm_swipe"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2664
    :goto_4
    const-string v25, "db_popup_view_shortcut"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2665
    const-string v25, "enable_smart_capture"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2666
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v25

    if-nez v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "com.samsung.android.app.aodservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 2667
    const-string v25, "aod_mode"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2672
    :goto_5
    const-string v25, "560,640"

    const-string v26, "NONE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 2673
    const-string v25, "ro.sf.lcd_density"

    const/16 v26, 0xa0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2674
    .local v7, "deviceDensity":I
    const/16 v25, 0x230

    move/from16 v0, v25

    if-ne v7, v0, :cond_13

    .line 2675
    const-string v25, "condensed"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2682
    .end local v7    # "deviceDensity":I
    :cond_9
    :goto_6
    const-string v25, "screen_off_pocket"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2685
    const-string v25, "tty_mode"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e005d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 2689
    .local v12, "mDefaultBrightness":I
    const-string v25, "screen_brightness"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "sensor"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/SensorManager;

    .line 2692
    .local v20, "sensorMgr":Landroid/hardware/SensorManager;
    const/16 v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v19

    .line 2693
    .local v19, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_14

    .line 2694
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Sensor;

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Sensor;->getType()I

    move-result v21

    .line 2695
    .local v21, "sensorType":I
    const/16 v25, 0x5

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 2697
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    .line 2693
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2580
    .end local v9    # "i":I
    .end local v12    # "mDefaultBrightness":I
    .end local v19    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v20    # "sensorMgr":Landroid/hardware/SensorManager;
    .end local v21    # "sensorType":I
    :cond_b
    const-string v25, "screen_off_timeout"

    const/high16 v26, 0x7f050000

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3044
    .end local v6    # "country_code":Ljava/lang/String;
    .end local v8    # "deviceType":Ljava/lang/String;
    .end local v10    # "isTablet":Z
    .end local v18    # "sales_code":Ljava/lang/String;
    :catchall_0
    move-exception v25

    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c
    throw v25

    .line 2634
    .restart local v6    # "country_code":Ljava/lang/String;
    .restart local v8    # "deviceType":Ljava/lang/String;
    .restart local v10    # "isTablet":Z
    .restart local v18    # "sales_code":Ljava/lang/String;
    :cond_d
    :try_start_1
    const-string v25, "motion_pick_up"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2639
    :cond_e
    const-string v25, "motion_pick_up_to_call_out"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2645
    :cond_f
    const-string v25, "motion_overturn"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2651
    :cond_10
    const-string v25, "surface_palm_swipe"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2654
    :cond_11
    const-string v25, "master_motion"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2655
    const-string v25, "motion_engine"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2656
    const-string v25, "motion_pick_up"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2657
    const-string v25, "motion_pick_up_to_call_out"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2658
    const-string v25, "motion_merged_mute_pause"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2659
    const-string v25, "motion_overturn"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2660
    const-string v25, "surface_palm_touch"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2661
    const-string v25, "surface_palm_swipe"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2669
    :cond_12
    const-string v25, "aod_mode"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2677
    .restart local v7    # "deviceDensity":I
    :cond_13
    const-string v25, "condensed"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2701
    .end local v7    # "deviceDensity":I
    .restart local v9    # "i":I
    .restart local v12    # "mDefaultBrightness":I
    .restart local v19    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v20    # "sensorMgr":Landroid/hardware/SensorManager;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1120029

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2702
    .local v5, "config_val":Z
    const-string v25, "SettingsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mAutomaticAvailable= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", config_val= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const-string v25, "MTR"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 2705
    const-string v25, "screen_brightness_mode"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2711
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2714
    const-string v25, "ro.product.name"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2715
    .local v17, "productName":Ljava/lang/String;
    const-string v25, "kactiveltekx"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 2716
    const-string v25, "SettingsProvider"

    const-string v26, "kactiveltekx project"

    invoke-static/range {v25 .. v26}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    :goto_9
    const-string v25, "2016A"

    const-string v26, "ro.build.scafe.version"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    const-string v25, "2015A"

    const-string v26, "ro.build.scafe.version"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 2727
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "phone"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    .line 2728
    .local v24, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v24, :cond_2d

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v25

    if-eqz v25, :cond_2d

    const/4 v11, 0x1

    .line 2730
    .local v11, "isVoiceCapable":Z
    :goto_a
    const-string v25, "DCM"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 2731
    const-string v25, "lock_application_shortcut"

    const-string v26, "1;com.samsung.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2744
    .end local v11    # "isVoiceCapable":Z
    .end local v24    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f040005

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_31

    const/4 v4, 0x1

    .line 2745
    .local v4, "auto_rotation":I
    :goto_c
    const-string v25, "ro.accelerometer_rotation"

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2746
    const-string v25, "SettingsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "def_accelerometer_rotation : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    const-string v25, "accelerometer_rotation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2749
    const-string v25, "MTR"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_32

    .line 2750
    const-string v25, "accelerometer_rotation"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2757
    :goto_d
    const-string v25, "any_screen_enabled"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2760
    const-string v25, "VIB_FEEDBACK_MAGNITUDE"

    const v26, 0x7f05000d

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2763
    const-string v25, "VIB_RECVCALL_MAGNITUDE"

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2766
    const-string v25, "VIB_NOTIFICATION_MAGNITUDE"

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2769
    const-string v25, "volume_waiting_tone"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2772
    const-string v25, "led_indicator_charing"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2773
    const-string v25, "led_indicator_low_battery"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2774
    const-string v25, "led_indicator_missed_event"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2775
    const-string v25, "led_indicator_voice_recording"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2778
    const-string v25, "ro.button_key_light"

    const/16 v26, 0x5dc

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2779
    .local v13, "mDefaultButtonKeyLight":I
    const-string v25, "ATT"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 2780
    const-string v25, "ro.button_key_light"

    const/16 v26, 0x1770

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2782
    :cond_17
    const-string v25, "SettingsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Default BUTTON_KEY_LIGHT : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    const-string v25, "button_key_light"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2785
    const-string v25, "display_battery_percentage"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2786
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2788
    const-string v25, "notification_light_pulse"

    const v26, 0x7f040012

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2791
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2793
    const-string v25, "pointer_speed"

    const v26, 0x7f05000c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2797
    const-string v25, "multi_window_enabled"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2799
    const-string v25, "country_code"

    const v26, 0x7f06001a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2801
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 2802
    const-string v25, "wifi_offload_network_notify"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2805
    :cond_18
    const-string v25, "easy_mode_switch"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2806
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadEasyModeApps(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2808
    const-string v25, "DCM"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2809
    const-string v25, "gps_noti_sound_enabled"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2810
    const-string v25, "gps_location_log_enabled"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2813
    :cond_19
    const-string v25, "phone1_virtualsim"

    const v26, 0x7f04002b

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2815
    const-string v25, "phone1_on"

    const v26, 0x7f040029

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2817
    const-string v25, "select_icon_1"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2818
    const-string v25, "select_name_1"

    const v26, 0x7f060015

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2820
    const-string v25, "last_select_name_1"

    const v26, 0x7f060015

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2822
    const-string v25, "sim1_value"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2824
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1a

    .line 2825
    const-string v25, "phone2_virtualsim"

    const v26, 0x7f04002c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2827
    const-string v25, "phone2_on"

    const v26, 0x7f04002a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2829
    const-string v25, "select_icon_2"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2830
    const-string v25, "select_icon_3"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2831
    const-string v25, "select_icon_4"

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2832
    const-string v25, "select_icon_5"

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2833
    const-string v25, "select_name_2"

    const v26, 0x7f060016

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2835
    const-string v25, "select_name_3"

    const v26, 0x7f060017

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2837
    const-string v25, "select_name_4"

    const v26, 0x7f060018

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2839
    const-string v25, "select_name_5"

    const v26, 0x7f060019

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2841
    const-string v25, "last_select_name_2"

    const v26, 0x7f060016

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2843
    const-string v25, "sim2_value"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2844
    const-string v25, "sim3_value"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2845
    const-string v25, "sim4_value"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2846
    const-string v25, "sim5_value"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2850
    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 2851
    const-string v25, "wireless_fast_charging"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2854
    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 2855
    const-string v25, "adaptive_fast_charging"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2859
    :cond_1c
    const-string v25, "set_shortcuts_mode"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2862
    const-string v15, "ONLYFORSHORTCUTS"

    .line 2864
    .local v15, "mEffectType":Ljava/lang/String;
    const-string v25, "ONLYFORSHORTCUTS"

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2865
    .local v16, "mEffectlist":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v14, v16, v25

    .line 2866
    .local v14, "mEffectDefault":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 2868
    const-string v25, "WATERDROPLET"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_33

    .line 2869
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0xd

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2894
    :goto_e
    const-string v25, "MTR"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3d

    .line 2895
    const-string v25, "show_password"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2901
    :goto_f
    const-string v25, "lte_mode_switch"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->isFolderModel(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 2905
    const-string v25, "key_backlight_timeout"

    const/16 v26, 0xbb8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->isDualFolderModel(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 2909
    const-string v25, "premium_watch_style_option"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2911
    const-string v25, "sub_lcd_auto_lock"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2913
    const-string v25, "key_night_mode"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2916
    const-string v25, "accelerometer_rotation"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2917
    const-string v25, "accelerometer_rotation_second"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2919
    const-string v25, "premium_watch_switch_onoff"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2920
    const-string v25, "premium_watch_sound"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2922
    const-string v25, "folder_sounds_enabled"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2923
    const-string v25, "folder_open_sound"

    const-string v26, "/system/media/audio/ui/Folder_Open.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2924
    const-string v25, "folder_close_sound"

    const-string v26, "/system/media/audio/ui/Folder_Close.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2925
    const-string v25, "send_key_sound"

    const-string v26, "/system/media/audio/ui/Send_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2926
    const-string v25, "end_key_sound"

    const-string v26, "/system/media/audio/ui/End_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2927
    const-string v25, "func_key_sound"

    const-string v26, "/system/media/audio/ui/Function_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2931
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->hasSPenFeature()Z

    move-result v25

    if-nez v25, :cond_1e

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 2932
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportPenUsp10()Z

    move-result v23

    .line 2934
    .local v23, "supportPenUsp10":Z
    const-string v25, "air_button_onoff"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2935
    if-eqz v23, :cond_1f

    .line 2936
    const-string v25, "air_cmd_use_minimized"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2937
    const-string v25, "air_cmd_detachment_option"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2941
    :cond_1f
    const-string v25, "pen_hovering"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2942
    const-string v25, "pen_hovering_information_preview"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2943
    const-string v25, "pen_hovering_icon_label"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2944
    const-string v25, "pen_hovering_list_scroll"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2945
    const-string v25, "pen_hovering_link_preview"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2946
    if-eqz v23, :cond_3e

    .line 2947
    const-string v25, "pen_hovering_air_menu"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2952
    :goto_10
    const-string v25, "pen_hovering_pointer"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2953
    const-string v25, "pen_writing_buddy"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2954
    const-string v25, "pen_detachment_alert"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2955
    if-eqz v23, :cond_20

    .line 2956
    const-string v25, "action_memo_on_off_screen"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2958
    :cond_20
    if-eqz v23, :cond_3f

    .line 2959
    const-string v25, "pen_detect_mode_disabled"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2963
    :goto_11
    const-string v25, "spen_feedback_sound"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2964
    const-string v25, "spen_feedback_sound_air_command"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2965
    const-string v25, "spen_feedback_sound_air_view"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2966
    const-string v25, "pen_writing_sound"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2969
    const-string v25, "spen_feedback_haptic"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2970
    const-string v25, "spen_feedback_haptic_air_command"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2971
    const-string v25, "spen_feedback_haptic_air_view"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2972
    const-string v25, "spen_feedback_haptic_pen_gesture"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2974
    const-string v25, "pen_detachment_option"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2975
    const-string v25, "pen_detachment_notification"

    const-string v26, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2976
    const-string v25, "pen_attach_detach_vibration"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2979
    .end local v23    # "supportPenUsp10":Z
    :cond_21
    const-string v25, "samsung_pay"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2982
    const-string v25, "people_stripe"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2983
    const-string v25, "turn_over_lighting"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2985
    const-string v25, "NZC"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    const-string v25, "USC"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    const-string v25, "ACG"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    const-string v25, "LRA"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    const-string v25, "2DX"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_40

    .line 2987
    :cond_22
    const-string v25, "dualclock_menu_settings"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2993
    :goto_12
    const-string v25, "VZW"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_41

    .line 2994
    const-string v25, "automatic_unlock"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2999
    :goto_13
    const-string v25, "screen_mode_automatic_setting"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3000
    if-eqz v10, :cond_23

    .line 3002
    const-string v25, "screen_mode_setting"

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3009
    :cond_23
    const-string v25, "SKT"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_24

    const-string v25, "SKC"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_24

    const-string v25, "SKO"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_25

    .line 3010
    :cond_24
    const-string v25, "t_safety_setting"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3011
    const-string v25, "off_menu_setting"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3014
    :cond_25
    const-string v25, "ro.product.name"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "philippelte"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 3015
    const-string v25, "current_sec_appicon_theme_package"

    const-string v26, "com.sec.android.theme.royalblue"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3018
    :cond_26
    const-string v25, "psm_backup_haptic_feedback"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3021
    const-string v25, "show_button_background"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3024
    const-string v25, "lock_to_app_enabled"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3027
    const-string v25, "high_brightness_mode_user_enable"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3028
    const-string v25, "high_brightness_mode_pms_enter"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3030
    const-string v25, "intelligent_sleep_mode"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3033
    const-string v25, "nearby_scanning_enabled"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3035
    const-string v25, "send_mms_block_list"

    const-string v26, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3044
    if-eqz v22, :cond_27

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3046
    :cond_27
    return-void

    .line 2707
    .end local v4    # "auto_rotation":I
    .end local v13    # "mDefaultButtonKeyLight":I
    .end local v14    # "mEffectDefault":Ljava/lang/String;
    .end local v15    # "mEffectType":Ljava/lang/String;
    .end local v16    # "mEffectlist":[Ljava/lang/String;
    .end local v17    # "productName":Ljava/lang/String;
    :cond_28
    :try_start_2
    const-string v26, "screen_brightness_mode"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_29

    if-eqz v5, :cond_29

    const/16 v25, 0x1

    :goto_14
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_29
    const/16 v25, 0x0

    goto :goto_14

    .line 2717
    .restart local v17    # "productName":Ljava/lang/String;
    :cond_2a
    const-string v25, "SC-01H"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2b

    const-string v25, "N533"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 2718
    :cond_2b
    const-string v25, "short_press_app"

    const-string v26, "com.android.settings/com.android.settings.activekey.ActiveKeySettingDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2719
    const-string v25, "short_press_app_battery_conserve"

    const-string v26, "torch/torch"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2721
    :cond_2c
    const-string v25, "short_press_app"

    const-string v26, "com.sec.activemode/com.sec.activemode.MainActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2722
    const-string v25, "long_press_app"

    const-string v26, "com.sec.android.app.music/com.sec.android.app.music.common.activity.MusicMainActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2728
    .restart local v24    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_2d
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 2733
    .restart local v11    # "isVoiceCapable":Z
    :cond_2e
    if-nez v11, :cond_30

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2f

    .line 2735
    const-string v25, "lock_application_shortcut"

    const-string v26, "1;com.android.chrome/com.google.android.apps.chrome.Main;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2737
    :cond_2f
    const-string v25, "lock_application_shortcut"

    const-string v26, "1;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2739
    :cond_30
    const-string v25, "lock_application_shortcut"

    const-string v26, "1;com.android.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2744
    .end local v11    # "isVoiceCapable":Z
    .end local v24    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 2752
    .restart local v4    # "auto_rotation":I
    :cond_32
    const-string v25, "accelerometer_rotation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 2870
    .restart local v13    # "mDefaultButtonKeyLight":I
    .restart local v14    # "mEffectDefault":Ljava/lang/String;
    .restart local v15    # "mEffectType":Ljava/lang/String;
    .restart local v16    # "mEffectlist":[Ljava/lang/String;
    :cond_33
    const-string v25, "COLOURDROPLET"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_34

    .line 2871
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0xf

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2872
    :cond_34
    const-string v25, "SPARKLINGBUBBLES"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_35

    .line 2873
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0xe

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2874
    :cond_35
    const-string v25, "BRILLIANTRING"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_36

    .line 2875
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2876
    :cond_36
    const-string v25, "POPPINGCOLOURS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_37

    .line 2877
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2878
    :cond_37
    const-string v25, "WATERCOLOUR"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_38

    .line 2879
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2880
    :cond_38
    const-string v25, "RIPPLE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_39

    .line 2881
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2882
    :cond_39
    const-string v25, "ABSTRACTTILES"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3a

    .line 2883
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0xb

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2884
    :cond_3a
    const-string v25, "GEOMETRICMOSAIC"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3b

    .line 2885
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0xc

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2886
    :cond_3b
    const-string v25, "STONESKIPPING"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3c

    .line 2887
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2889
    :cond_3c
    const-string v25, "lockscreen_ripple_effect"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2897
    :cond_3d
    const-string v25, "show_password"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 2949
    .restart local v23    # "supportPenUsp10":Z
    :cond_3e
    const-string v25, "pen_hovering_air_menu"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 2961
    :cond_3f
    const-string v25, "pen_detect_mode_disabled"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 2989
    .end local v23    # "supportPenUsp10":Z
    :cond_40
    const-string v25, "dualclock_menu_settings"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 2996
    :cond_41
    const-string v25, "automatic_unlock"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_13
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3049
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3050
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_DefDialingKeypadTone"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3051
    const-string v1, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_DefDialingKeypadTone"

    const-string v4, "ON"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3052
    const-string v1, "dtmf_tone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3063
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3064
    const-string v1, "sound_effects_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3069
    :goto_1
    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3070
    :cond_0
    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3075
    :goto_2
    const-string v1, "sound_alive_effect"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3076
    const-string v1, "k2hd_effect"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3077
    const-string v1, "tube_amp_effect"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3079
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3080
    const-string v1, "sip_key_feedback_sound"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3081
    const-string v1, "sip_key_feedback_vibration"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3087
    :goto_3
    return-void

    .line 3054
    :cond_1
    const-string v1, "dtmf_tone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3057
    :cond_2
    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3058
    const-string v1, "dtmf_tone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3060
    :cond_3
    const-string v1, "dtmf_tone"

    const v2, 0x7f040020

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_0

    .line 3066
    :cond_4
    const-string v1, "sound_effects_enabled"

    const v2, 0x7f040021

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_1

    .line 3072
    :cond_5
    const-string v1, "lockscreen_sounds_enabled"

    const v2, 0x7f050006

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_2

    .line 3083
    :cond_6
    const-string v1, "sip_key_feedback_sound"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3084
    const-string v1, "sip_key_feedback_vibration"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteOld"    # Z

    .prologue
    .line 2421
    if-eqz p2, :cond_0

    .line 2422
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2425
    :cond_0
    const/4 v0, 0x0

    .line 2427
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2431
    const/4 v1, 0x0

    .line 2432
    .local v1, "vibrate":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2435
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 2437
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2441
    :cond_1
    return-void

    .line 2439
    .end local v1    # "vibrate":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2447
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2449
    .local v0, "isDefaultTrue":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2450
    :cond_0
    const-string v6, "vibrate_on"

    invoke-direct {p0, p1, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    .line 2456
    .local v2, "vibrateSetting":I
    :goto_0
    and-int/lit8 v6, v2, 0x3

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 2458
    .local v3, "vibrateWhenRinging":Z
    :goto_1
    const/4 v1, 0x0

    .line 2460
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v6, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2462
    const-string v6, "vibrate_when_ringing"

    if-eqz v3, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2466
    :cond_1
    return-void

    .line 2453
    .end local v1    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "vibrateSetting":I
    .end local v3    # "vibrateWhenRinging":Z
    :cond_2
    const-string v6, "vibrate_on"

    invoke-direct {p0, p1, v6, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "vibrateSetting":I
    goto :goto_0

    :cond_3
    move v3, v5

    .line 2456
    goto :goto_1

    .restart local v1    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "vibrateWhenRinging":Z
    :cond_4
    move v4, v5

    .line 2462
    goto :goto_2

    .line 2464
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v4
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2363
    const/4 v1, 0x0

    .line 2365
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2368
    const-string v2, "volume_music"

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2370
    const-string v2, "volume_ring"

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2372
    const-string v2, "volume_system"

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2374
    const-string v2, "volume_voice"

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2378
    const-string v2, "volume_alarm"

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2380
    const-string v2, "volume_notification"

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2384
    const-string v2, "volume_bluetooth_sco"

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2390
    const-string v2, "volume_music_headset"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2391
    const-string v2, "volume_music_headphone"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2392
    const-string v2, "volume_music_bt_a2dp"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2400
    const/16 v0, 0xa6

    .line 2404
    .local v0, "ringerModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2406
    or-int/lit8 v0, v0, 0x8

    .line 2408
    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2411
    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2417
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2418
    return-void

    .line 2414
    .end local v0    # "ringerModeAffectedStreams":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "prefixesToMove"    # [Ljava/lang/String;

    .prologue
    .line 2123
    const/4 v3, 0x0

    .line 2124
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 2126
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2128
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2134
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2135
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2136
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2137
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2139
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v1, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2140
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2141
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2143
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2146
    if-eqz v3, :cond_1

    .line 2147
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2149
    :cond_1
    if-eqz v1, :cond_2

    .line 2150
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2153
    :cond_2
    return-void

    .line 2145
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2146
    if-eqz v3, :cond_3

    .line 2147
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2149
    :cond_3
    if-eqz v1, :cond_4

    .line 2150
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "settingsToMove"    # [Ljava/lang/String;
    .param p5, "doIgnore"    # Z

    .prologue
    .line 2087
    const/4 v3, 0x0

    .line 2088
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 2090
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2092
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_0

    const-string v6, " OR IGNORE "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2096
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2098
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 2099
    .local v5, "setting":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2100
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2102
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2103
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2098
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2092
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "setting":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 2105
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2108
    if-eqz v3, :cond_2

    .line 2109
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2111
    :cond_2
    if-eqz v1, :cond_3

    .line 2112
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2115
    :cond_3
    return-void

    .line 2107
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2108
    if-eqz v3, :cond_4

    .line 2109
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2111
    :cond_4
    if-eqz v1, :cond_5

    .line 2112
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v6
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2515
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2516
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2517
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    :cond_0
    return-object v0
.end method

.method private setToStringArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2059
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 2060
    .local v0, "array":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2251
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2252
    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 2253
    .local v2, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 2254
    .local v1, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2255
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 2256
    .local v3, "sensorType":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 2257
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    .line 2254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
    .end local v3    # "sensorType":I
    :cond_1
    :try_start_0
    iget-boolean v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    if-eqz v5, :cond_2

    const-string v4, "1"

    .line 2262
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2268
    return-void

    .line 2261
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2266
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2156
    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2158
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2159
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2160
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2161
    .local v10, "lockPattern":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2164
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2165
    .local v11, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 2167
    .local v9, "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v9, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    .end local v9    # "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2173
    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2177
    .end local v10    # "lockPattern":Ljava/lang/String;
    :goto_1
    return-void

    .line 2175
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2168
    .restart local v10    # "lockPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2181
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2185
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2186
    .local v9, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2189
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 2195
    const-string v0, "screen_off_timeout"

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2204
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 2207
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 2212
    const-string v2, "vibrate_on"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 2214
    .local v1, "vibrateSetting":I
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 2215
    const/4 v2, 0x2

    invoke-static {v3, v3, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2219
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2222
    const/4 v0, 0x0

    .line 2224
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2226
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    if-eqz v0, :cond_1

    .line 2229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2231
    :cond_1
    return-void

    .line 2228
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 2229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public backupDatabase()V
    .locals 5

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->close()V

    .line 204
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 205
    .local v1, "databaseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public dropDatabase()V
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->close()V

    .line 191
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 192
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 197
    .local v1, "databaseJournalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 200
    :cond_1
    return-void
.end method

.method public hasHaptic()Z
    .locals 3

    .prologue
    .line 3646
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/timed_output/vibrator/enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3647
    .local v0, "fe":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3648
    const-string v1, "SettingsProvider"

    const-string v2, "hasHaptic() : HAS_VIBRATOR_PATH file exist. return true"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    const/4 v1, 0x1

    .line 3653
    :goto_0
    return v1

    .line 3651
    :cond_0
    const-string v1, "SettingsProvider"

    const-string v2, "hasHaptic() : HAS_VIBRATOR_PATH doesn\'t exist. return false"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3653
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3682
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3683
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 3685
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3691
    :goto_0
    return v1

    .line 3686
    :catch_0
    move-exception v0

    .line 3687
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 3688
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAllNAVendor()Z
    .locals 2

    .prologue
    .line 3629
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3631
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

    .line 3635
    :cond_0
    const/4 v1, 0x1

    .line 3637
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableIntensity()Z
    .locals 3

    .prologue
    .line 3657
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/timed_output/vibrator/intensity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3658
    .local v0, "fe":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3659
    const-string v1, "SettingsProvider"

    const-string v2, "isEnableIntensity() : ENABLE_INTENSITY_PATH file exist. return true"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    const/4 v1, 0x1

    .line 3664
    :goto_0
    return v1

    .line 3662
    :cond_0
    const-string v1, "SettingsProvider"

    const-string v2, "isEnableIntensity() : ENABLE_INTENSITY_PATH doesn\'t exist. return false"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isJapanModel()Z
    .locals 2

    .prologue
    .line 3641
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3642
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

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 236
    const-string v1, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v1, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v1, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 250
    :cond_0
    const-string v1, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v1, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v1, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v1, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "onlyCore":Z
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 286
    return-void

    .line 275
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 49
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 307
    const-string v5, "SettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading settings database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move/from16 v46, p2

    .line 319
    .local v46, "upgradeVersion":I
    const/16 v5, 0x14

    move/from16 v0, v46

    if-ne v0, v5, :cond_0

    .line 326
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 328
    const/16 v46, 0x15

    .line 331
    :cond_0
    const/16 v5, 0x16

    move/from16 v0, v46

    if-ge v0, v5, :cond_1

    .line 332
    const/16 v46, 0x16

    .line 334
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 337
    :cond_1
    const/16 v5, 0x17

    move/from16 v0, v46

    if-ge v0, v5, :cond_2

    .line 338
    const-string v5, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    const/16 v46, 0x17

    .line 342
    :cond_2
    const/16 v5, 0x17

    move/from16 v0, v46

    if-ne v0, v5, :cond_3

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 345
    :try_start_0
    const-string v5, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v5, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v5, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    const-string v5, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v5, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 358
    const/16 v46, 0x18

    .line 361
    :cond_3
    const/16 v5, 0x18

    move/from16 v0, v46

    if-ne v0, v5, :cond_4

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 366
    :try_start_1
    const-string v5, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 373
    const/16 v46, 0x19

    .line 376
    :cond_4
    const/16 v5, 0x19

    move/from16 v0, v46

    if-ne v0, v5, :cond_5

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 379
    :try_start_2
    const-string v5, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    const-string v5, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    const/16 v46, 0x1a

    .line 388
    :cond_5
    const/16 v5, 0x1a

    move/from16 v0, v46

    if-ne v0, v5, :cond_6

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 392
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    const/16 v46, 0x1b

    .line 400
    :cond_6
    const/16 v5, 0x1b

    move/from16 v0, v46

    if-ne v0, v5, :cond_7

    .line 401
    const/16 v5, 0x1f

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adb_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "android_id"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "bluetooth_on"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "data_roaming"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "device_provisioned"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "http_proxy"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "install_non_market_apps"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "location_providers_allowed"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "logging_id"

    aput-object v6, v9, v5

    const/16 v5, 0x9

    const-string v6, "network_preference"

    aput-object v6, v9, v5

    const/16 v5, 0xa

    const-string v6, "parental_control_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0xb

    const-string v6, "parental_control_last_update"

    aput-object v6, v9, v5

    const/16 v5, 0xc

    const-string v6, "parental_control_redirect_url"

    aput-object v6, v9, v5

    const/16 v5, 0xd

    const-string v6, "settings_classname"

    aput-object v6, v9, v5

    const/16 v5, 0xe

    const-string v6, "usb_mass_storage_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0xf

    const-string v6, "use_google_mail"

    aput-object v6, v9, v5

    const/16 v5, 0x10

    const-string v6, "wifi_networks_available_notification_on"

    aput-object v6, v9, v5

    const/16 v5, 0x11

    const-string v6, "wifi_networks_available_repeat_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x12

    const-string v6, "wifi_num_open_networks_kept"

    aput-object v6, v9, v5

    const/16 v5, 0x13

    const-string v6, "wifi_on"

    aput-object v6, v9, v5

    const/16 v5, 0x14

    const-string v6, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v6, v9, v5

    const/16 v5, 0x15

    const-string v6, "wifi_watchdog_ap_count"

    aput-object v6, v9, v5

    const/16 v5, 0x16

    const-string v6, "wifi_watchdog_background_check_delay_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x17

    const-string v6, "wifi_watchdog_background_check_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0x18

    const-string v6, "wifi_watchdog_background_check_timeout_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x19

    const-string v6, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v6, v9, v5

    const/16 v5, 0x1a

    const-string v6, "wifi_watchdog_max_ap_checks"

    aput-object v6, v9, v5

    const/16 v5, 0x1b

    const-string v6, "wifi_watchdog_on"

    aput-object v6, v9, v5

    const/16 v5, 0x1c

    const-string v6, "wifi_watchdog_ping_count"

    aput-object v6, v9, v5

    const/16 v5, 0x1d

    const-string v6, "wifi_watchdog_ping_delay_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x1e

    const-string v6, "wifi_watchdog_ping_timeout_ms"

    aput-object v6, v9, v5

    .line 434
    .local v9, "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 435
    const/16 v46, 0x1c

    .line 438
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_7
    const/16 v5, 0x1c

    move/from16 v0, v46

    if-eq v0, v5, :cond_8

    const/16 v5, 0x1d

    move/from16 v0, v46

    if-ne v0, v5, :cond_9

    .line 445
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 447
    :try_start_4
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const/16 v38, 0x26

    .line 452
    .local v38, "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    const/16 v46, 0x1e

    .line 463
    .end local v38    # "newValue":I
    :cond_9
    const/16 v5, 0x1e

    move/from16 v0, v46

    if-ne v0, v5, :cond_a

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 471
    :try_start_5
    const-string v5, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 472
    const-string v5, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 477
    const/16 v46, 0x1f

    .line 480
    :cond_a
    const/16 v5, 0x1f

    move/from16 v0, v46

    if-ne v0, v5, :cond_c

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 486
    const/16 v42, 0x0

    .line 488
    .local v42, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 492
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v42, :cond_b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 500
    :cond_b
    const/16 v46, 0x20

    .line 503
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v5, 0x20

    move/from16 v0, v46

    if-ne v0, v5, :cond_e

    .line 506
    const-string v5, "ro.com.android.wifi-watchlist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 507
    .local v48, "wifiWatchList":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 510
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 518
    :cond_d
    const/16 v46, 0x21

    .line 521
    .end local v48    # "wifiWatchList":Ljava/lang/String;
    :cond_e
    const/16 v5, 0x21

    move/from16 v0, v46

    if-ne v0, v5, :cond_f

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 525
    :try_start_8
    const-string v5, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 530
    const/16 v46, 0x22

    .line 533
    :cond_f
    const/16 v5, 0x22

    move/from16 v0, v46

    if-ne v0, v5, :cond_11

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 535
    const/16 v42, 0x0

    .line 537
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 543
    if-eqz v42, :cond_10

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 545
    :cond_10
    const/16 v46, 0x23

    .line 551
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v5, 0x23

    move/from16 v0, v46

    if-ne v0, v5, :cond_12

    .line 552
    const/16 v46, 0x24

    .line 555
    :cond_12
    const/16 v5, 0x24

    move/from16 v0, v46

    if-ne v0, v5, :cond_13

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 560
    :try_start_a
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    const/16 v38, 0xa6

    .line 566
    .restart local v38    # "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 573
    const/16 v46, 0x25

    .line 576
    .end local v38    # "newValue":I
    :cond_13
    const/16 v5, 0x25

    move/from16 v0, v46

    if-ne v0, v5, :cond_15

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 578
    const/16 v42, 0x0

    .line 580
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 582
    const-string v5, "airplane_mode_toggleable_radios"

    const v6, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 587
    if-eqz v42, :cond_14

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 589
    :cond_14
    const/16 v46, 0x26

    .line 592
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v5, 0x26

    move/from16 v0, v46

    if-ne v0, v5, :cond_16

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 595
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_a3

    const-string v47, "1"

    .line 597
    .local v47, "value":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 604
    const/16 v46, 0x27

    .line 607
    .end local v47    # "value":Ljava/lang/String;
    :cond_16
    const/16 v5, 0x27

    move/from16 v0, v46

    if-ne v0, v5, :cond_17

    .line 608
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 609
    const/16 v46, 0x28

    .line 612
    :cond_17
    const/16 v5, 0x28

    move/from16 v0, v46

    if-ne v0, v5, :cond_19

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 617
    const/16 v42, 0x0

    .line 619
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 629
    if-eqz v42, :cond_18

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 631
    :cond_18
    const/16 v46, 0x29

    .line 634
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v5, 0x29

    move/from16 v0, v46

    if-ne v0, v5, :cond_1b

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 639
    const/16 v42, 0x0

    .line 641
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v5, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 649
    if-eqz v42, :cond_1a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 652
    :cond_1a
    const/16 v46, 0x2a

    .line 655
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v5, 0x2a

    move/from16 v0, v46

    if-ne v0, v5, :cond_1d

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 660
    const/16 v42, 0x0

    .line 662
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 664
    const-string v5, "notification_light_pulse"

    const v6, 0x7f040012

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    if-eqz v42, :cond_1c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 671
    :cond_1c
    const/16 v46, 0x2b

    .line 674
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v5, 0x2b

    move/from16 v0, v46

    if-ne v0, v5, :cond_1f

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 679
    const/16 v42, 0x0

    .line 681
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 683
    const-string v5, "volume_bluetooth_sco"

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    if-eqz v42, :cond_1e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 690
    :cond_1e
    const/16 v46, 0x2c

    .line 693
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v5, 0x2c

    move/from16 v0, v46

    if-ne v0, v5, :cond_20

    .line 697
    const-string v5, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    const-string v5, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    const/16 v46, 0x2d

    .line 702
    :cond_20
    const/16 v5, 0x2d

    move/from16 v0, v46

    if-ne v0, v5, :cond_21

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 708
    :try_start_11
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 720
    const/16 v46, 0x2e

    .line 723
    :cond_21
    const/16 v5, 0x2e

    move/from16 v0, v46

    if-ne v0, v5, :cond_22

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 730
    :try_start_12
    const-string v5, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 735
    const/16 v46, 0x2f

    .line 739
    :cond_22
    const/16 v5, 0x2f

    move/from16 v0, v46

    if-ne v0, v5, :cond_23

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 746
    :try_start_13
    const-string v5, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    const/16 v46, 0x30

    .line 754
    :cond_23
    const/16 v5, 0x30

    move/from16 v0, v46

    if-ne v0, v5, :cond_24

    .line 759
    const/16 v46, 0x31

    .line 762
    :cond_24
    const/16 v5, 0x31

    move/from16 v0, v46

    if-ne v0, v5, :cond_26

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 767
    const/16 v42, 0x0

    .line 769
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_14
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 775
    if-eqz v42, :cond_25

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 778
    :cond_25
    const/16 v46, 0x32

    .line 781
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v5, 0x32

    move/from16 v0, v46

    if-ne v0, v5, :cond_27

    .line 785
    const/16 v46, 0x33

    .line 788
    :cond_27
    const/16 v5, 0x33

    move/from16 v0, v46

    if-ne v0, v5, :cond_28

    .line 790
    const/16 v5, 0x9

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lock_pattern_autolock"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "lock_pattern_visible_pattern"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "lock_pattern_tactile_feedback_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "lockscreen.password_type"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "lockscreen.lockoutattemptdeadline"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "lockscreen.patterneverchosen"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "lock_pattern_autolock"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "lockscreen.lockedoutpermanently"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "lockscreen.password_salt"

    aput-object v6, v9, v5

    .line 801
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 802
    const/16 v46, 0x34

    .line 805
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_28
    const/16 v5, 0x34

    move/from16 v0, v46

    if-ne v0, v5, :cond_2a

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 808
    const/16 v42, 0x0

    .line 810
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 812
    const-string v5, "vibrate_in_silent"

    const v6, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 817
    if-eqz v42, :cond_29

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 820
    :cond_29
    const/16 v46, 0x35

    .line 823
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v5, 0x35

    move/from16 v0, v46

    if-ne v0, v5, :cond_2b

    .line 827
    const/16 v46, 0x36

    .line 830
    :cond_2b
    const/16 v5, 0x36

    move/from16 v0, v46

    if-ne v0, v5, :cond_2c

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 836
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 842
    const/16 v46, 0x37

    .line 845
    :cond_2c
    const/16 v5, 0x37

    move/from16 v0, v46

    if-ne v0, v5, :cond_2e

    .line 847
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "set_install_location"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "default_install_location"

    aput-object v6, v9, v5

    .line 851
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 853
    const/16 v42, 0x0

    .line 855
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_17
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 857
    const-string v5, "set_install_location"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v5, "default_install_location"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 863
    if-eqz v42, :cond_2d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 865
    :cond_2d
    const/16 v46, 0x38

    .line 868
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2e
    const/16 v5, 0x38

    move/from16 v0, v46

    if-ne v0, v5, :cond_30

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 873
    const/16 v42, 0x0

    .line 875
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v5, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 877
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 879
    const-string v5, "airplane_mode_toggleable_radios"

    const v6, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 883
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 884
    if-eqz v42, :cond_2f

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 886
    :cond_2f
    const/16 v46, 0x39

    .line 891
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_30
    const/16 v5, 0x39

    move/from16 v0, v46

    if-ne v0, v5, :cond_32

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 898
    const/16 v42, 0x0

    .line 900
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 902
    const-string v5, "accessibility_script_injection"

    const v6, 0x7f04001b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 904
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 905
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 907
    const-string v5, "accessibility_web_content_key_bindings"

    const v6, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 911
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 912
    if-eqz v42, :cond_31

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 914
    :cond_31
    const/16 v46, 0x3a

    .line 917
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_32
    const/16 v5, 0x3a

    move/from16 v0, v46

    if-ne v0, v5, :cond_34

    .line 919
    const-string v5, "auto_time"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v33

    .line 920
    .local v33, "autoTimeValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 921
    const/16 v42, 0x0

    .line 923
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 924
    const-string v5, "auto_time_zone"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 929
    if-eqz v42, :cond_33

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 931
    :cond_33
    const/16 v46, 0x3b

    .line 934
    .end local v33    # "autoTimeValue":I
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_34
    const/16 v5, 0x3b

    move/from16 v0, v46

    if-ne v0, v5, :cond_36

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 937
    const/16 v42, 0x0

    .line 939
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1b
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 941
    const-string v5, "user_rotation"

    const v6, 0x7f050008

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 946
    if-eqz v42, :cond_35

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 948
    :cond_35
    const/16 v46, 0x3c

    .line 951
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_36
    const/16 v5, 0x3c

    move/from16 v0, v46

    if-ne v0, v5, :cond_37

    .line 955
    const/16 v46, 0x3d

    .line 958
    :cond_37
    const/16 v5, 0x3d

    move/from16 v0, v46

    if-ne v0, v5, :cond_38

    .line 962
    const/16 v46, 0x3e

    .line 966
    :cond_38
    const/16 v5, 0x3e

    move/from16 v0, v46

    if-ne v0, v5, :cond_39

    .line 970
    const/16 v46, 0x3f

    .line 973
    :cond_39
    const/16 v5, 0x3f

    move/from16 v0, v46

    if-ne v0, v5, :cond_3a

    .line 976
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 978
    :try_start_1c
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 980
    const/16 v38, 0xae

    .line 985
    .restart local v38    # "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 992
    const/16 v46, 0x40

    .line 995
    .end local v38    # "newValue":I
    :cond_3a
    const/16 v5, 0x40

    move/from16 v0, v46

    if-ne v0, v5, :cond_3c

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 998
    const/16 v42, 0x0

    .line 1000
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1d
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1002
    const-string v5, "long_press_timeout"

    const v6, 0x7f05000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1004
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 1007
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1008
    if-eqz v42, :cond_3b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1010
    :cond_3b
    const/16 v46, 0x41

    .line 1015
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3c
    const/16 v5, 0x41

    move/from16 v0, v46

    if-ne v0, v5, :cond_3e

    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1020
    const/16 v42, 0x0

    .line 1022
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1028
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1032
    if-eqz v42, :cond_3d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1034
    :cond_3d
    const/16 v46, 0x42

    .line 1037
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3e
    const/16 v5, 0x42

    move/from16 v0, v46

    if-ne v0, v5, :cond_40

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1042
    const/16 v41, 0xa6

    .line 1046
    .local v41, "ringerModeAffectedStreams":I
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1048
    or-int/lit8 v41, v41, 0x8

    .line 1050
    :cond_3f
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 1057
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1059
    const/16 v46, 0x43

    .line 1062
    .end local v41    # "ringerModeAffectedStreams":I
    :cond_40
    const/16 v5, 0x43

    move/from16 v0, v46

    if-ne v0, v5, :cond_42

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1065
    const/16 v42, 0x0

    .line 1067
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_20
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1069
    const-string v5, "touch_exploration_enabled"

    const v6, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1071
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1075
    if-eqz v42, :cond_41

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1077
    :cond_41
    const/16 v46, 0x44

    .line 1080
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    const/16 v5, 0x44

    move/from16 v0, v46

    if-ne v0, v5, :cond_43

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1084
    :try_start_21
    const-string v5, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1090
    const/16 v46, 0x45

    .line 1093
    :cond_43
    const/16 v5, 0x45

    move/from16 v0, v46

    if-ne v0, v5, :cond_44

    .line 1095
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f060000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1097
    .local v32, "airplaneRadios":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1099
    .local v43, "toggleableRadios":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1101
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE system SET value=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "airplane_mode_radios"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE system SET value=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "airplane_mode_toggleable_radios"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1107
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1109
    const/16 v46, 0x46

    .line 1112
    .end local v32    # "airplaneRadios":Ljava/lang/String;
    .end local v43    # "toggleableRadios":Ljava/lang/String;
    :cond_44
    const/16 v5, 0x46

    move/from16 v0, v46

    if-ne v0, v5, :cond_45

    .line 1114
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1115
    const/16 v46, 0x47

    .line 1118
    :cond_45
    const/16 v5, 0x47

    move/from16 v0, v46

    if-ne v0, v5, :cond_47

    .line 1120
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1121
    const/16 v42, 0x0

    .line 1123
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_23
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1125
    const-string v5, "speak_password"

    const v6, 0x7f04001c

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1129
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1130
    if-eqz v42, :cond_46

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1132
    :cond_46
    const/16 v46, 0x48

    .line 1135
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_47
    const/16 v5, 0x48

    move/from16 v0, v46

    if-ne v0, v5, :cond_49

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1138
    const/16 v42, 0x0

    .line 1140
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_24
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1142
    const-string v5, "vibrate_in_silent"

    const v6, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1147
    if-eqz v42, :cond_48

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1149
    :cond_48
    const/16 v46, 0x49

    .line 1152
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_49
    const/16 v5, 0x49

    move/from16 v0, v46

    if-ne v0, v5, :cond_4a

    .line 1153
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1154
    const/16 v46, 0x4a

    .line 1157
    :cond_4a
    const/16 v5, 0x4a

    move/from16 v0, v46

    if-ne v0, v5, :cond_4c

    .line 1159
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1160
    const/16 v42, 0x0

    .line 1162
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1163
    const-string v5, "accessibility_script_injection_url"

    const v6, 0x7f06000f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1165
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1168
    if-eqz v42, :cond_4b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1170
    :cond_4b
    const/16 v46, 0x4b

    .line 1172
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4c
    const/16 v5, 0x4b

    move/from16 v0, v46

    if-ne v0, v5, :cond_51

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1174
    const/16 v42, 0x0

    .line 1175
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/16 v34, 0x0

    .line 1177
    .local v34, "c":Landroid/database/Cursor;
    :try_start_26
    const-string v11, "secure"

    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "value"

    aput-object v6, v12, v5

    const-string v13, "name=\'lockscreen.disabled\'"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 1181
    if-eqz v34, :cond_4d

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4e

    .line 1182
    :cond_4d
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1184
    const-string v5, "lockscreen.disabled"

    const v6, 0x7f040017

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1187
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1190
    if-eqz v34, :cond_4f

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 1191
    :cond_4f
    if-eqz v42, :cond_50

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1193
    :cond_50
    const/16 v46, 0x4c

    .line 1198
    .end local v34    # "c":Landroid/database/Cursor;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_51
    const/16 v5, 0x4c

    move/from16 v0, v46

    if-ne v0, v5, :cond_52

    .line 1200
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1202
    :try_start_27
    const-string v5, "DELETE FROM system WHERE name=\'vibrate_in_silent\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1206
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1209
    const/16 v46, 0x4d

    .line 1212
    :cond_52
    const/16 v5, 0x4d

    move/from16 v0, v46

    if-ne v0, v5, :cond_53

    .line 1214
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1216
    const/16 v46, 0x4e

    .line 1219
    :cond_53
    const/16 v5, 0x4e

    move/from16 v0, v46

    if-ne v0, v5, :cond_55

    .line 1221
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1222
    const/16 v42, 0x0

    .line 1224
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_28
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1226
    const-string v5, "accessibility_script_injection_url"

    const v6, 0x7f06000f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1228
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    if-eqz v42, :cond_54

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1233
    :cond_54
    const/16 v46, 0x4f

    .line 1236
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_55
    const/16 v5, 0x4f

    move/from16 v0, v46

    if-ne v0, v5, :cond_57

    .line 1253
    const-string v5, "secure"

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b8

    const/16 v31, 0x1

    .line 1255
    .local v31, "accessibilityEnabled":Z
    :goto_1
    const-string v5, "secure"

    const-string v6, "touch_exploration_enabled"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b9

    const/16 v44, 0x1

    .line 1257
    .local v44, "touchExplorationEnabled":Z
    :goto_2
    if-eqz v31, :cond_56

    if-eqz v44, :cond_56

    .line 1258
    const-string v5, "secure"

    const-string v6, "enabled_accessibility_services"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1260
    .local v37, "enabledServices":Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "touch_exploration_granted_accessibility_services"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1262
    .local v45, "touchExplorationGrantedServices":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 1264
    const/16 v42, 0x0

    .line 1266
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1267
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1269
    const-string v5, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v5, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1272
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1275
    if-eqz v42, :cond_56

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1279
    .end local v37    # "enabledServices":Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :cond_56
    const/16 v46, 0x50

    .line 1284
    .end local v31    # "accessibilityEnabled":Z
    .end local v44    # "touchExplorationEnabled":Z
    :cond_57
    const/16 v5, 0x50

    move/from16 v0, v46

    if-ne v0, v5, :cond_59

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1287
    const/16 v42, 0x0

    .line 1289
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2a
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1291
    const-string v5, "screensaver_enabled"

    const v6, 0x112006e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1293
    const-string v5, "screensaver_activate_on_dock"

    const v6, 0x112006f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1295
    const-string v5, "screensaver_activate_on_sleep"

    const v6, 0x1120070

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1297
    const-string v5, "screensaver_components"

    const v6, 0x1040041

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1299
    const-string v5, "screensaver_default_component"

    const v6, 0x1040041

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 1304
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1305
    if-eqz v42, :cond_58

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1307
    :cond_58
    const/16 v46, 0x51

    .line 1310
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_59
    const/16 v5, 0x51

    move/from16 v0, v46

    if-ne v0, v5, :cond_5b

    .line 1312
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1313
    const/16 v42, 0x0

    .line 1315
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1317
    const-string v5, "package_verifier_enable"

    const v6, 0x7f04000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1322
    if-eqz v42, :cond_5a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1324
    :cond_5a
    const/16 v46, 0x52

    .line 1327
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5b
    const/16 v5, 0x52

    move/from16 v0, v46

    if-ne v0, v5, :cond_5d

    .line 1329
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_5c

    .line 1331
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1332
    const/16 v42, 0x0

    .line 1336
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1337
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1339
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1340
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1342
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1344
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    .line 1346
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1347
    if-eqz v42, :cond_5c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1350
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5c
    const/16 v46, 0x53

    .line 1353
    :cond_5d
    const/16 v5, 0x53

    move/from16 v0, v46

    if-ne v0, v5, :cond_5f

    .line 1357
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1358
    const/16 v42, 0x0

    .line 1360
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2d
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1361
    const-string v5, "accessibility_display_magnification_enabled"

    const v6, 0x7f04001e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1364
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1365
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1366
    const-string v5, "accessibility_display_magnification_scale"

    const v6, 0x7f070002

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1368
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1369
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1370
    const-string v5, "accessibility_display_magnification_auto_update"

    const v6, 0x7f04001f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    .line 1376
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1377
    if-eqz v42, :cond_5e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1379
    :cond_5e
    const/16 v46, 0x54

    .line 1382
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5f
    const/16 v5, 0x54

    move/from16 v0, v46

    if-ne v0, v5, :cond_61

    .line 1383
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_60

    .line 1384
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1385
    const/16 v42, 0x0

    .line 1389
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x6

    :try_start_2e
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adb_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "bluetooth_on"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "data_roaming"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "device_provisioned"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "install_non_market_apps"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "usb_mass_storage_enabled"

    aput-object v6, v9, v5

    .line 1397
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1398
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    .line 1400
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1401
    if-eqz v42, :cond_60

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1404
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_60
    const/16 v46, 0x55

    .line 1407
    :cond_61
    const/16 v5, 0x55

    move/from16 v0, v46

    if-ne v0, v5, :cond_63

    .line 1408
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_62

    .line 1409
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1413
    const/4 v5, 0x1

    :try_start_2f
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "stay_on_while_plugged_in"

    aput-object v6, v9, v5

    .line 1414
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1416
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    .line 1418
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1421
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_62
    const/16 v46, 0x56

    .line 1424
    :cond_63
    const/16 v5, 0x56

    move/from16 v0, v46

    if-ne v0, v5, :cond_65

    .line 1425
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_64

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1428
    const/4 v5, 0x3

    :try_start_30
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "package_verifier_enable"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "verifier_timeout"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "verifier_default_response"

    aput-object v6, v9, v5

    .line 1433
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1435
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    .line 1437
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1440
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_64
    const/16 v46, 0x57

    .line 1443
    :cond_65
    const/16 v5, 0x57

    move/from16 v0, v46

    if-ne v0, v5, :cond_67

    .line 1444
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_66

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1447
    const/4 v5, 0x3

    :try_start_31
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_stall_alarm_non_aggressive_delay_in_ms"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "data_stall_alarm_aggressive_delay_in_ms"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "gprs_register_check_period_ms"

    aput-object v6, v9, v5

    .line 1452
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1454
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    .line 1456
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1459
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_66
    const/16 v46, 0x58

    .line 1462
    :cond_67
    const/16 v5, 0x58

    move/from16 v0, v46

    if-ne v0, v5, :cond_69

    .line 1463
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_68

    .line 1464
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1466
    const/16 v5, 0x1f

    :try_start_32
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "battery_discharge_duration_threshold"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "battery_discharge_threshold"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "send_action_app_error"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "dropbox_age_seconds"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "dropbox_max_files"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "dropbox_quota_kb"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "dropbox_quota_percent"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "dropbox_reserve_percent"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "dropbox:"

    aput-object v6, v9, v5

    const/16 v5, 0x9

    const-string v6, "logcat_for_"

    aput-object v6, v9, v5

    const/16 v5, 0xa

    const-string v6, "sys_free_storage_log_interval"

    aput-object v6, v9, v5

    const/16 v5, 0xb

    const-string v6, "disk_free_change_reporting_threshold"

    aput-object v6, v9, v5

    const/16 v5, 0xc

    const-string v6, "sys_storage_threshold_percentage"

    aput-object v6, v9, v5

    const/16 v5, 0xd

    const-string v6, "sys_storage_threshold_max_bytes"

    aput-object v6, v9, v5

    const/16 v5, 0xe

    const-string v6, "sys_storage_full_threshold_bytes"

    aput-object v6, v9, v5

    const/16 v5, 0xf

    const-string v6, "sync_max_retry_delay_in_seconds"

    aput-object v6, v9, v5

    const/16 v5, 0x10

    const-string v6, "connectivity_change_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x11

    const-string v6, "captive_portal_detection_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0x12

    const-string v6, "captive_portal_server"

    aput-object v6, v9, v5

    const/16 v5, 0x13

    const-string v6, "nsd_on"

    aput-object v6, v9, v5

    const/16 v5, 0x14

    const-string v6, "set_install_location"

    aput-object v6, v9, v5

    const/16 v5, 0x15

    const-string v6, "default_install_location"

    aput-object v6, v9, v5

    const/16 v5, 0x16

    const-string v6, "inet_condition_debounce_up_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x17

    const-string v6, "inet_condition_debounce_down_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x18

    const-string v6, "read_external_storage_enforced_default"

    aput-object v6, v9, v5

    const/16 v5, 0x19

    const-string v6, "http_proxy"

    aput-object v6, v9, v5

    const/16 v5, 0x1a

    const-string v6, "global_http_proxy_host"

    aput-object v6, v9, v5

    const/16 v5, 0x1b

    const-string v6, "global_http_proxy_port"

    aput-object v6, v9, v5

    const/16 v5, 0x1c

    const-string v6, "global_http_proxy_exclusion_list"

    aput-object v6, v9, v5

    const/16 v5, 0x1d

    const-string v6, "set_global_http_proxy"

    aput-object v6, v9, v5

    const/16 v5, 0x1e

    const-string v6, "default_dns_server"

    aput-object v6, v9, v5

    .line 1499
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1500
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    .line 1502
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1505
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_68
    const/16 v46, 0x59

    .line 1508
    :cond_69
    const/16 v5, 0x59

    move/from16 v0, v46

    if-ne v0, v5, :cond_6b

    .line 1509
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6a

    .line 1510
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1512
    const/4 v5, 0x3

    :try_start_33
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/4 v5, 0x0

    const-string v6, "bluetooth_headset_priority_"

    aput-object v6, v40, v5

    const/4 v5, 0x1

    const-string v6, "bluetooth_a2dp_sink_priority_"

    aput-object v6, v40, v5

    const/4 v5, 0x2

    const-string v6, "bluetooth_input_device_priority_"

    aput-object v6, v40, v5

    .line 1518
    .local v40, "prefixesToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/providers/settings/DatabaseHelper;->movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1520
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    .line 1522
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1525
    .end local v40    # "prefixesToMove":[Ljava/lang/String;
    :cond_6a
    const/16 v46, 0x5a

    .line 1528
    :cond_6b
    const/16 v5, 0x5a

    move/from16 v0, v46

    if-ne v0, v5, :cond_6d

    .line 1529
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6c

    .line 1530
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1532
    const/16 v5, 0xb

    :try_start_34
    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "window_animation_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "transition_animation_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x2

    const-string v6, "animator_duration_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x3

    const-string v6, "fancy_ime_animations"

    aput-object v6, v14, v5

    const/4 v5, 0x4

    const-string v6, "compatibility_mode"

    aput-object v6, v14, v5

    const/4 v5, 0x5

    const-string v6, "emergency_tone"

    aput-object v6, v14, v5

    const/4 v5, 0x6

    const-string v6, "call_auto_retry"

    aput-object v6, v14, v5

    const/4 v5, 0x7

    const-string v6, "debug_app"

    aput-object v6, v14, v5

    const/16 v5, 0x8

    const-string v6, "wait_for_debugger"

    aput-object v6, v14, v5

    const/16 v5, 0x9

    const-string v6, "show_processes"

    aput-object v6, v14, v5

    const/16 v5, 0xa

    const-string v6, "always_finish_activities"

    aput-object v6, v14, v5

    .line 1545
    .local v14, "systemToGlobal":[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, "preferred_network_mode"

    aput-object v6, v19, v5

    const/4 v5, 0x1

    const-string v6, "subscription_mode"

    aput-object v6, v19, v5

    .line 1550
    .local v19, "secureToGlobal":[Ljava/lang/String;
    const-string v12, "system"

    const-string v13, "global"

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1551
    const-string v17, "secure"

    const-string v18, "global"

    const/16 v20, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v20}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1553
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    .line 1555
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1558
    .end local v14    # "systemToGlobal":[Ljava/lang/String;
    .end local v19    # "secureToGlobal":[Ljava/lang/String;
    :cond_6c
    const/16 v46, 0x5b

    .line 1561
    :cond_6d
    const/16 v5, 0x5b

    move/from16 v0, v46

    if-ne v0, v5, :cond_6f

    .line 1562
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6e

    .line 1563
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1566
    const/4 v5, 0x1

    :try_start_35
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mode_ringer"

    aput-object v6, v9, v5

    .line 1567
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1569
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    .line 1571
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1574
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_6e
    const/16 v46, 0x5c

    .line 1577
    :cond_6f
    const/16 v5, 0x5c

    move/from16 v0, v46

    if-ne v0, v5, :cond_71

    .line 1578
    const/16 v42, 0x0

    .line 1580
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_36
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1582
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_c0

    .line 1586
    const-string v5, "global"

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 1588
    .local v36, "deviceProvisioned":I
    const-string v5, "user_setup_complete"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    .line 1596
    .end local v36    # "deviceProvisioned":I
    :goto_3
    if-eqz v42, :cond_70

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1598
    :cond_70
    const/16 v46, 0x5d

    .line 1601
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_71
    const/16 v5, 0x5d

    move/from16 v0, v46

    if-ne v0, v5, :cond_73

    .line 1603
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_72

    .line 1604
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1607
    :try_start_37
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1609
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1610
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1612
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1614
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1619
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_72
    const/16 v46, 0x5e

    .line 1622
    :cond_73
    const/16 v5, 0x5e

    move/from16 v0, v46

    if-ne v0, v5, :cond_75

    .line 1624
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_74

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1626
    const/16 v42, 0x0

    .line 1628
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_38
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1630
    const-string v5, "wireless_charging_started_sound"

    const v6, 0x7f06000c

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1632
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    .line 1634
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1635
    if-eqz v42, :cond_74

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1638
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_74
    const/16 v46, 0x5f

    .line 1641
    :cond_75
    const/16 v5, 0x5f

    move/from16 v0, v46

    if-ne v0, v5, :cond_77

    .line 1642
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_76

    .line 1643
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1645
    const/4 v5, 0x1

    :try_start_39
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bugreport_in_power_menu"

    aput-object v6, v9, v5

    .line 1646
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1647
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    .line 1649
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1652
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_76
    const/16 v46, 0x60

    .line 1655
    :cond_77
    const/16 v5, 0x60

    move/from16 v0, v46

    if-ne v0, v5, :cond_78

    .line 1657
    const/16 v46, 0x61

    .line 1660
    :cond_78
    const/16 v5, 0x61

    move/from16 v0, v46

    if-ne v0, v5, :cond_7a

    .line 1661
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_79

    .line 1662
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1663
    const/16 v42, 0x0

    .line 1665
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3a
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1667
    const-string v5, "low_battery_sound_timeout"

    const v6, 0x7f05000f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1669
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    .line 1671
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1672
    if-eqz v42, :cond_79

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1675
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_79
    const/16 v46, 0x62

    .line 1678
    :cond_7a
    const/16 v5, 0x62

    move/from16 v0, v46

    if-ne v0, v5, :cond_7b

    .line 1680
    const/16 v46, 0x63

    .line 1683
    :cond_7b
    const/16 v5, 0x63

    move/from16 v0, v46

    if-ne v0, v5, :cond_7c

    .line 1685
    const/16 v46, 0x64

    .line 1688
    :cond_7c
    const/16 v5, 0x64

    move/from16 v0, v46

    if-ne v0, v5, :cond_7e

    .line 1690
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_7d

    .line 1691
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1692
    const/16 v42, 0x0

    .line 1694
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1696
    const-string v5, "heads_up_notifications_enabled"

    const v6, 0x7f050012

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1698
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1701
    if-eqz v42, :cond_7d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1704
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7d
    const/16 v46, 0x65

    .line 1707
    :cond_7e
    const/16 v5, 0x65

    move/from16 v0, v46

    if-ne v0, v5, :cond_80

    .line 1708
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_7f

    .line 1709
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1710
    const/16 v42, 0x0

    .line 1712
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3c
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1714
    const-string v5, "device_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1715
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3c

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1718
    if-eqz v42, :cond_7f

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1721
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7f
    const/16 v46, 0x66

    .line 1724
    :cond_80
    const/16 v5, 0x66

    move/from16 v0, v46

    if-ne v0, v5, :cond_82

    .line 1725
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1726
    const/16 v42, 0x0

    .line 1730
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_c6

    .line 1733
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const-string v6, "install_non_market_apps"

    aput-object v6, v24, v5

    .line 1736
    .local v24, "globalToSecure":[Ljava/lang/String;
    const-string v22, "global"

    const-string v23, "secure"

    const/16 v25, 0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    invoke-direct/range {v20 .. v25}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1745
    .end local v24    # "globalToSecure":[Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3d

    .line 1747
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1748
    if-eqz v42, :cond_81

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1750
    :cond_81
    const/16 v46, 0x67

    .line 1753
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_82
    const/16 v5, 0x67

    move/from16 v0, v46

    if-ne v0, v5, :cond_84

    .line 1754
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1755
    const/16 v42, 0x0

    .line 1757
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3e
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1759
    const-string v5, "wake_gesture_enabled"

    const v6, 0x7f040025

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1761
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    .line 1763
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1764
    if-eqz v42, :cond_83

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1766
    :cond_83
    const/16 v46, 0x68

    .line 1769
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_84
    const/16 v5, 0x69

    move/from16 v0, v46

    if-ge v0, v5, :cond_86

    .line 1770
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_85

    .line 1771
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1772
    const/16 v42, 0x0

    .line 1774
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3f
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1776
    const-string v5, "guest_user_enabled"

    const v6, 0x7f040026

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1778
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1781
    if-eqz v42, :cond_85

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1784
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_85
    const/16 v46, 0x69

    .line 1787
    :cond_86
    const/16 v5, 0x6a

    move/from16 v0, v46

    if-ge v0, v5, :cond_89

    .line 1789
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1790
    const/16 v42, 0x0

    .line 1792
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_40
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1794
    const-string v5, "lock_screen_show_notifications"

    const v6, 0x7f050011

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1796
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_87

    .line 1797
    const-string v5, "global"

    const-string v6, "lock_screen_show_notifications"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    .line 1799
    .local v39, "oldShow":I
    if-ltz v39, :cond_87

    .line 1801
    const-string v5, "lock_screen_show_notifications"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1802
    const-string v5, "DELETE FROM global WHERE name=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v35

    .line 1804
    .local v35, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    const-string v6, "lock_screen_show_notifications"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1805
    invoke-virtual/range {v35 .. v35}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1808
    .end local v35    # "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v39    # "oldShow":I
    :cond_87
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_40

    .line 1810
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1811
    if-eqz v42, :cond_88

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1813
    :cond_88
    const/16 v46, 0x6a

    .line 1816
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_89
    const/16 v5, 0x6b

    move/from16 v0, v46

    if-ge v0, v5, :cond_8b

    .line 1818
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_8a

    .line 1819
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1820
    const/16 v42, 0x0

    .line 1822
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_41
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1824
    const-string v5, "trusted_sound"

    const v6, 0x7f06000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1826
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_41

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1829
    if-eqz v42, :cond_8a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1832
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8a
    const/16 v46, 0x6b

    .line 1835
    :cond_8b
    const/16 v5, 0x6c

    move/from16 v0, v46

    if-ge v0, v5, :cond_8d

    .line 1839
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1840
    const/16 v42, 0x0

    .line 1842
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_42
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1844
    const-string v5, "screen_brightness_mode"

    const v6, 0x7f040006

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1846
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1849
    if-eqz v42, :cond_8c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1851
    :cond_8c
    const/16 v46, 0x6c

    .line 1854
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8d
    const/16 v5, 0x6d

    move/from16 v0, v46

    if-ge v0, v5, :cond_8f

    .line 1855
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1856
    const/16 v42, 0x0

    .line 1858
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_43
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1860
    const-string v5, "lock_screen_allow_private_notifications"

    const v6, 0x7f040024

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1862
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_43

    .line 1864
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1865
    if-eqz v42, :cond_8e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1867
    :cond_8e
    const/16 v46, 0x6d

    .line 1870
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8f
    const/16 v5, 0x6e

    move/from16 v0, v46

    if-ge v0, v5, :cond_91

    .line 1874
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1875
    const/16 v42, 0x0

    .line 1877
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_44
    const-string v5, "UPDATE system SET value = ? WHERE name = ? AND value = ?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1879
    const/4 v5, 0x1

    const-string v6, "SIP_ADDRESS_ONLY"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1880
    const/4 v5, 0x2

    const-string v6, "sip_call_options"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1881
    const/4 v5, 0x3

    const-string v6, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1882
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1883
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_44

    .line 1885
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1886
    if-eqz v42, :cond_90

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1888
    :cond_90
    const/16 v46, 0x6e

    .line 1891
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_91
    const/16 v5, 0x6f

    move/from16 v0, v46

    if-ge v0, v5, :cond_93

    .line 1893
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_92

    .line 1894
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1895
    const/16 v42, 0x0

    .line 1897
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_45
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1899
    const-string v5, "mode_ringer"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1900
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1903
    if-eqz v42, :cond_92

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1906
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_92
    const/16 v46, 0x6f

    .line 1909
    :cond_93
    const/16 v5, 0x70

    move/from16 v0, v46

    if-ge v0, v5, :cond_95

    .line 1910
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_94

    .line 1914
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1915
    const/16 v42, 0x0

    .line 1917
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_46
    const-string v5, "UPDATE global SET value = ?  WHERE name = ? AND value = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1919
    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1920
    const/4 v5, 0x2

    const-string v6, "device_name"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1921
    const/4 v5, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getOldDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1922
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1923
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_46

    .line 1925
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1926
    if-eqz v42, :cond_94

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1929
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_94
    const/16 v46, 0x70

    .line 1932
    :cond_95
    const/16 v5, 0x71

    move/from16 v0, v46

    if-ge v0, v5, :cond_97

    .line 1933
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1934
    const/16 v42, 0x0

    .line 1936
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_47
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1938
    const-string v5, "sleep_timeout"

    const v6, 0x7f050001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1940
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_47

    .line 1942
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1943
    if-eqz v42, :cond_96

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1945
    :cond_96
    const/16 v46, 0x71

    .line 1950
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_97
    const/16 v5, 0x73

    move/from16 v0, v46

    if-ge v0, v5, :cond_99

    .line 1951
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_98

    .line 1952
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1953
    const/16 v42, 0x0

    .line 1955
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_48
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1957
    const-string v5, "theater_mode_on"

    const v6, 0x7f040002

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_48

    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1962
    if-eqz v42, :cond_98

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1965
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_98
    const/16 v46, 0x73

    .line 1968
    :cond_99
    const/16 v5, 0x74

    move/from16 v0, v46

    if-ge v0, v5, :cond_9b

    .line 1969
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_9a

    .line 1970
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1971
    const/16 v42, 0x0

    .line 1973
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_49
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1975
    const-string v5, "volte_vt_enabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1977
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    .line 1979
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1980
    if-eqz v42, :cond_9a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1983
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9a
    const/16 v46, 0x74

    .line 1986
    :cond_9b
    const/16 v5, 0x75

    move/from16 v0, v46

    if-ge v0, v5, :cond_9c

    .line 1987
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1989
    const/4 v5, 0x1

    :try_start_4a
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v5, 0x0

    const-string v6, "lock_to_app_exit_locked"

    aput-object v6, v29, v5

    .line 1992
    .local v29, "systemToSecure":[Ljava/lang/String;
    const-string v27, "system"

    const-string v28, "secure"

    const/16 v30, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    invoke-direct/range {v25 .. v30}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1993
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_4a

    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1997
    const/16 v46, 0x75

    .line 2000
    .end local v29    # "systemToSecure":[Ljava/lang/String;
    :cond_9c
    const/16 v5, 0x76

    move/from16 v0, v46

    if-ge v0, v5, :cond_9e

    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2004
    const/16 v42, 0x0

    .line 2006
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4b
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 2008
    const-string v5, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2010
    const-string v5, "date_format"

    const v6, 0x7f06000d

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_4b

    .line 2015
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2016
    if-eqz v42, :cond_9d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2018
    :cond_9d
    const/16 v46, 0x76

    .line 2029
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9e
    move/from16 v0, v46

    move/from16 v1, p3

    if-eq v0, v1, :cond_9f

    .line 2030
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v46

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 2032
    :cond_9f
    return-void

    .line 356
    :catchall_0
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 371
    :catchall_1
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 383
    :catchall_2
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 395
    :catchall_3
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 457
    :catchall_4
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 475
    :catchall_5
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 497
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    if-eqz v42, :cond_a0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a0
    throw v5

    .line 515
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v48    # "wifiWatchList":Ljava/lang/String;
    :catchall_7
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 528
    .end local v48    # "wifiWatchList":Ljava/lang/String;
    :catchall_8
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 542
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 543
    if-eqz v42, :cond_a1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a1
    throw v5

    .line 571
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 586
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 587
    if-eqz v42, :cond_a2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a2
    throw v5

    .line 595
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a3
    :try_start_4c
    const-string v47, "0"
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_c

    goto/16 :goto_0

    .line 601
    :catchall_c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 628
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 629
    if-eqz v42, :cond_a4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a4
    throw v5

    .line 648
    :catchall_e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 649
    if-eqz v42, :cond_a5

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a5
    throw v5

    .line 668
    :catchall_f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    if-eqz v42, :cond_a6

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a6
    throw v5

    .line 687
    :catchall_10
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    if-eqz v42, :cond_a7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a7
    throw v5

    .line 718
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_11
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 733
    :catchall_12
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 749
    :catchall_13
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 774
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_14
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 775
    if-eqz v42, :cond_a8

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a8
    throw v5

    .line 816
    :catchall_15
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 817
    if-eqz v42, :cond_a9

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a9
    throw v5

    .line 839
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_16
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 862
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 863
    if-eqz v42, :cond_aa

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_aa
    throw v5

    .line 883
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :catchall_18
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 884
    if-eqz v42, :cond_ab

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ab
    throw v5

    .line 911
    :catchall_19
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 912
    if-eqz v42, :cond_ac

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ac
    throw v5

    .line 928
    .restart local v33    # "autoTimeValue":I
    :catchall_1a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 929
    if-eqz v42, :cond_ad

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ad
    throw v5

    .line 945
    .end local v33    # "autoTimeValue":I
    :catchall_1b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 946
    if-eqz v42, :cond_ae

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ae
    throw v5

    .line 990
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1007
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1008
    if-eqz v42, :cond_af

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_af
    throw v5

    .line 1031
    :catchall_1e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1032
    if-eqz v42, :cond_b0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b0
    throw v5

    .line 1057
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v41    # "ringerModeAffectedStreams":I
    :catchall_1f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1074
    .end local v41    # "ringerModeAffectedStreams":I
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_20
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1075
    if-eqz v42, :cond_b1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b1
    throw v5

    .line 1088
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1107
    .restart local v32    # "airplaneRadios":Ljava/lang/String;
    .restart local v43    # "toggleableRadios":Ljava/lang/String;
    :catchall_22
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1129
    .end local v32    # "airplaneRadios":Ljava/lang/String;
    .end local v43    # "toggleableRadios":Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_23
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1130
    if-eqz v42, :cond_b2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b2
    throw v5

    .line 1146
    :catchall_24
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1147
    if-eqz v42, :cond_b3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b3
    throw v5

    .line 1167
    :catchall_25
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1168
    if-eqz v42, :cond_b4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b4
    throw v5

    .line 1189
    .restart local v34    # "c":Landroid/database/Cursor;
    :catchall_26
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1190
    if-eqz v34, :cond_b5

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 1191
    :cond_b5
    if-eqz v42, :cond_b6

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b6
    throw v5

    .line 1206
    .end local v34    # "c":Landroid/database/Cursor;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_27
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1230
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    if-eqz v42, :cond_b7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b7
    throw v5

    .line 1253
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b8
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 1255
    .restart local v31    # "accessibilityEnabled":Z
    :cond_b9
    const/16 v44, 0x0

    goto/16 :goto_2

    .line 1274
    .restart local v37    # "enabledServices":Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v44    # "touchExplorationEnabled":Z
    .restart local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_29
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1275
    if-eqz v42, :cond_ba

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ba
    throw v5

    .line 1304
    .end local v31    # "accessibilityEnabled":Z
    .end local v37    # "enabledServices":Ljava/lang/String;
    .end local v44    # "touchExplorationEnabled":Z
    .end local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1305
    if-eqz v42, :cond_bb

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bb
    throw v5

    .line 1321
    :catchall_2b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1322
    if-eqz v42, :cond_bc

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bc
    throw v5

    .line 1346
    :catchall_2c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1347
    if-eqz v42, :cond_bd

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bd
    throw v5

    .line 1376
    :catchall_2d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1377
    if-eqz v42, :cond_be

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_be
    throw v5

    .line 1400
    :catchall_2e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1401
    if-eqz v42, :cond_bf

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bf
    throw v5

    .line 1418
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1437
    :catchall_30
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1456
    :catchall_31
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1502
    :catchall_32
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1522
    :catchall_33
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1555
    :catchall_34
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1571
    :catchall_35
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1592
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c0
    :try_start_4d
    const-string v5, "user_setup_complete"

    const v6, 0x7f040023

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_36

    goto/16 :goto_3

    .line 1596
    :catchall_36
    move-exception v5

    if-eqz v42, :cond_c1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c1
    throw v5

    .line 1616
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_37
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1634
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_38
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1635
    if-eqz v42, :cond_c2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c2
    throw v5

    .line 1649
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_39
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1671
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_3a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1672
    if-eqz v42, :cond_c3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c3
    throw v5

    .line 1700
    :catchall_3b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1701
    if-eqz v42, :cond_c4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c4
    throw v5

    .line 1717
    :catchall_3c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1718
    if-eqz v42, :cond_c5

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    throw v5

    .line 1740
    :cond_c6
    :try_start_4e
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1742
    const-string v5, "install_non_market_apps"

    const v6, 0x7f04000a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_3d

    goto/16 :goto_4

    .line 1747
    :catchall_3d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1748
    if-eqz v42, :cond_c7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c7
    throw v5

    .line 1763
    :catchall_3e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1764
    if-eqz v42, :cond_c8

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c8
    throw v5

    .line 1780
    :catchall_3f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1781
    if-eqz v42, :cond_c9

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c9
    throw v5

    .line 1810
    :catchall_40
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1811
    if-eqz v42, :cond_ca

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ca
    throw v5

    .line 1828
    :catchall_41
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1829
    if-eqz v42, :cond_cb

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cb
    throw v5

    .line 1848
    :catchall_42
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1849
    if-eqz v42, :cond_cc

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cc
    throw v5

    .line 1864
    :catchall_43
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1865
    if-eqz v42, :cond_cd

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cd
    throw v5

    .line 1885
    :catchall_44
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1886
    if-eqz v42, :cond_ce

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ce
    throw v5

    .line 1902
    :catchall_45
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1903
    if-eqz v42, :cond_cf

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cf
    throw v5

    .line 1925
    :catchall_46
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1926
    if-eqz v42, :cond_d0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d0
    throw v5

    .line 1942
    :catchall_47
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1943
    if-eqz v42, :cond_d1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d1
    throw v5

    .line 1961
    :catchall_48
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1962
    if-eqz v42, :cond_d2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d2
    throw v5

    .line 1979
    :catchall_49
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1980
    if-eqz v42, :cond_d3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d3
    throw v5

    .line 1995
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 2015
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2016
    if-eqz v42, :cond_d4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d4
    throw v5
.end method

.method public recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "upgradeVersion"    # I
    .param p4, "currentVersion"    # I

    .prologue
    .line 2036
    const-string v1, "DROP TABLE IF EXISTS global"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2037
    const-string v1, "DROP TABLE IF EXISTS globalIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2038
    const-string v1, "DROP TABLE IF EXISTS system"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2039
    const-string v1, "DROP INDEX IF EXISTS systemIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2040
    const-string v1, "DROP TABLE IF EXISTS secure"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2041
    const-string v1, "DROP INDEX IF EXISTS secureIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2042
    const-string v1, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2043
    const-string v1, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2044
    const-string v1, "DROP TABLE IF EXISTS bluetooth_devices"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2045
    const-string v1, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2046
    const-string v1, "DROP INDEX IF EXISTS bookmarksIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2047
    const-string v1, "DROP INDEX IF EXISTS bookmarksIndex2"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2048
    const-string v1, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "wipeReason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2056
    return-void
.end method
