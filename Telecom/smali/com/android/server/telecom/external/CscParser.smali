.class public Lcom/android/server/telecom/external/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static Media_Type:I

.field private static mChameleonFileName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mOthersFileName:Ljava/lang/String;

.field private static sChameleonInstance:Lcom/android/server/telecom/external/CscParser;

.field private static sInstance:Lcom/android/server/telecom/external/CscParser;

.field private static sOthersInstance:Lcom/android/server/telecom/external/CscParser;

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mHandler:Landroid/os/Handler;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/telecom/external/CscParser;

    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/external/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/external/CscParser;->sInstance:Lcom/android/server/telecom/external/CscParser;

    .line 54
    new-instance v0, Lcom/android/server/telecom/external/CscParser;

    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/external/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/external/CscParser;->sOthersInstance:Lcom/android/server/telecom/external/CscParser;

    .line 56
    new-instance v0, Lcom/android/server/telecom/external/CscParser;

    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/external/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/external/CscParser;->sChameleonInstance:Lcom/android/server/telecom/external/CscParser;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/external/CscParser;->value_uri:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x1

    sput v0, Lcom/android/server/telecom/external/CscParser;->Media_Type:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/external/CscParser;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sput-object p1, Lcom/android/server/telecom/external/CscParser;->mFileName:Ljava/lang/String;

    .line 83
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/external/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/external/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sput-object p1, Lcom/android/server/telecom/external/CscParser;->mOthersFileName:Ljava/lang/String;

    .line 93
    :try_start_1
    sget-object v0, Lcom/android/server/telecom/external/CscParser;->mOthersFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/external/CscParser;->update(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sput-object p1, Lcom/android/server/telecom/external/CscParser;->mChameleonFileName:Ljava/lang/String;

    .line 103
    :try_start_2
    sget-object v0, Lcom/android/server/telecom/external/CscParser;->mChameleonFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/external/CscParser;->update(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "/carrier/chameleon.xml"

    .line 545
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v4, "/system/csc/customer.xml"

    .line 370
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/imei/mps_code.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/csc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/csc/customer.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 390
    const-string v2, "/system/csc/customer.xml"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 400
    :goto_0
    :try_start_3
    const-string v0, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customer_path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v2

    .line 428
    :goto_1
    if-eqz v1, :cond_0

    .line 430
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 436
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 438
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 448
    :cond_1
    :goto_3
    return-object v0

    .line 408
    :cond_2
    :try_start_6
    const-string v0, "CscParser"

    const-string v1, "mps_code.dat does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v1, "/system/csc/customer.xml"
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 412
    :try_start_7
    const-string v0, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customer_path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 418
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v0, v4

    .line 419
    :goto_4
    :try_start_8
    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 428
    if-eqz v2, :cond_3

    .line 430
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 436
    :cond_3
    :goto_5
    if-eqz v3, :cond_1

    .line 438
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 442
    :catch_1
    move-exception v1

    goto :goto_3

    .line 420
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v0, v4

    .line 428
    :goto_6
    if-eqz v1, :cond_4

    .line 430
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 436
    :cond_4
    :goto_7
    if-eqz v3, :cond_1

    .line 438
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 442
    :catch_3
    move-exception v1

    goto :goto_3

    .line 427
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 428
    :goto_8
    if-eqz v2, :cond_5

    .line 430
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 436
    :cond_5
    :goto_9
    if-eqz v3, :cond_6

    .line 438
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 444
    :cond_6
    :goto_a
    throw v0

    .line 431
    :catch_4
    move-exception v1

    goto :goto_2

    .line 442
    :catch_5
    move-exception v1

    goto :goto_3

    .line 431
    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_9

    .line 442
    :catch_9
    move-exception v1

    goto :goto_a

    .line 427
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .line 420
    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v0, v4

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v0, v4

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_6

    .line 418
    :catch_e
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_10
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catch_11
    move-exception v0

    move-object v3, v2

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4

    :cond_7
    move-object v2, v4

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/server/telecom/external/CscParser;
    .locals 2

    .prologue
    .line 115
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/external/CscParser;->sInstance:Lcom/android/server/telecom/external/CscParser;

    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/external/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    sget-object v0, Lcom/android/server/telecom/external/CscParser;->sInstance:Lcom/android/server/telecom/external/CscParser;

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOthersPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 454
    const-string v4, "/system/csc/others.xml"

    .line 463
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/imei/mps_code.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/csc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/csc/others.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 483
    const-string v2, "/system/csc/others.xml"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 491
    :goto_0
    :try_start_3
    const-string v0, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "others_path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v2

    .line 519
    :goto_1
    if-eqz v1, :cond_0

    .line 521
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 527
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 529
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 539
    :cond_1
    :goto_3
    return-object v0

    .line 499
    :cond_2
    :try_start_6
    const-string v0, "CscParser"

    const-string v1, "mps_code.dat does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v1, "/system/csc/others.xml"
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 503
    :try_start_7
    const-string v0, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "others_path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v0, v4

    .line 510
    :goto_4
    :try_start_8
    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 519
    if-eqz v2, :cond_3

    .line 521
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 527
    :cond_3
    :goto_5
    if-eqz v3, :cond_1

    .line 529
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 533
    :catch_1
    move-exception v1

    goto :goto_3

    .line 511
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v0, v4

    .line 519
    :goto_6
    if-eqz v1, :cond_4

    .line 521
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 527
    :cond_4
    :goto_7
    if-eqz v3, :cond_1

    .line 529
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 533
    :catch_3
    move-exception v1

    goto :goto_3

    .line 518
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 519
    :goto_8
    if-eqz v2, :cond_5

    .line 521
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 527
    :cond_5
    :goto_9
    if-eqz v3, :cond_6

    .line 529
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 535
    :cond_6
    :goto_a
    throw v0

    .line 522
    :catch_4
    move-exception v1

    goto :goto_2

    .line 533
    :catch_5
    move-exception v1

    goto :goto_3

    .line 522
    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_9

    .line 533
    :catch_9
    move-exception v1

    goto :goto_a

    .line 518
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .line 511
    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v0, v4

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v0, v4

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_6

    .line 509
    :catch_e
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_10
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catch_11
    move-exception v0

    move-object v3, v2

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4

    :cond_7
    move-object v2, v4

    goto/16 :goto_0
.end method

.method private update(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/external/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 184
    iget-object v0, p0, Lcom/android/server/telecom/external/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/external/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "CscParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): file not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 311
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 305
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    if-nez p1, :cond_1

    move-object v0, v1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/external/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 211
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 217
    if-nez v0, :cond_2

    move-object v0, v1

    .line 219
    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/server/telecom/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 233
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 242
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    .line 244
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 248
    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method
