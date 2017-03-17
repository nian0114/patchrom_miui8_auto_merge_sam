.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_MAX:I = 0x9

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "eSE"

    aput-object v1, v0, v3

    const-string v1, "SIM"

    aput-object v1, v0, v4

    const-string v1, "SD"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eSE1"

    aput-object v1, v0, v6

    const-string v1, "SIM1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SD1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "eSE2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SIM2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SD2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    .line 45
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "SCP11a"

    aput-object v1, v0, v4

    const-string v1, "SCP11b"

    aput-object v1, v0, v5

    const-string v1, "SCPCustom"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    return-void
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 1
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method private static checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 1
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .locals 5

    .prologue
    .line 311
    const/4 v0, 0x1

    .line 312
    .local v0, "deleteFile":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string/jumbo v4, "keyguardConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 315
    .local v1, "existFile":Z
    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 317
    if-nez v0, :cond_0

    .line 318
    const-string/jumbo v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    .line 322
    :cond_0
    return v0
.end method

.method public static deleteODEConfig()Z
    .locals 5

    .prologue
    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "deleteFile":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string/jumbo v4, "odeConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v2, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 130
    .local v1, "existFile":Z
    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    const-string/jumbo v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 137
    :cond_0
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .locals 16

    .prologue
    const/4 v12, 0x0

    .line 247
    const-string/jumbo v13, "load Keyguard config"

    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 248
    new-instance v7, Ljava/io/File;

    const-string v13, "/efs/sec_efs"

    const-string/jumbo v14, "keyguardConfig"

    invoke-direct {v7, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v7, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    .line 250
    .local v2, "existFile":Z
    if-nez v2, :cond_1

    .line 251
    const-string v13, "Keyguard config file does not exist"

    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move-object v6, v12

    .line 307
    :cond_0
    :goto_0
    return-object v6

    .line 255
    :cond_1
    const/4 v3, 0x0

    .line 256
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 258
    .local v5, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    .end local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9

    .line 262
    .local v9, "lengthCSName":I
    if-lez v9, :cond_3

    .line 263
    new-array v0, v9, [B

    .line 264
    .local v0, "csTemp":[B
    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 265
    iput-object v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 270
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    .line 271
    .local v8, "lengthAID":I
    if-lez v8, :cond_5

    .line 272
    new-array v13, v8, [B

    iput-object v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 273
    iget-object v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    .line 274
    .local v10, "readByteSize":I
    if-eq v10, v8, :cond_7

    .line 275
    const-string v13, "EFSProperties"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read side mismatched, lengthAID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", readByteSize : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 298
    if-eqz v4, :cond_2

    .line 300
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v6, v12

    .line 303
    goto :goto_0

    .line 267
    .end local v0    # "csTemp":[B
    .end local v8    # "lengthAID":I
    .end local v10    # "readByteSize":I
    :cond_3
    :try_start_4
    const-string v13, "EFSProperties"

    const-string v14, "CS Name length is not proper"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 298
    if-eqz v4, :cond_4

    .line 300
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    :goto_2
    move-object v6, v12

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "csTemp":[B
    .restart local v8    # "lengthAID":I
    .restart local v10    # "readByteSize":I
    :catch_1
    move-exception v1

    .line 302
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    .end local v10    # "readByteSize":I
    :cond_5
    :try_start_6
    const-string v13, "EFSProperties"

    const-string v14, "AID length is not proper"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 298
    if-eqz v4, :cond_6

    .line 300
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_3
    move-object v6, v12

    .line 303
    goto :goto_0

    .line 301
    :catch_2
    move-exception v1

    .line 302
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v10    # "readByteSize":I
    :cond_7
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v11

    .line 283
    .local v11, "storageType":I
    iput v11, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 284
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 285
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 286
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 287
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 288
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 298
    if-eqz v4, :cond_0

    .line 300
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 301
    :catch_3
    move-exception v1

    .line 302
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    .end local v0    # "csTemp":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v8    # "lengthAID":I
    .end local v9    # "lengthCSName":I
    .end local v10    # "readByteSize":I
    .end local v11    # "storageType":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_4
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string/jumbo v13, "loadKeyguardConfig : IOException"

    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 298
    if-eqz v3, :cond_8

    .line 300
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_5
    move-object v6, v12

    .line 303
    goto/16 :goto_0

    .line 301
    :catch_5
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    const-string/jumbo v13, "loadKeyguardConfig : Exception"

    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 298
    if-eqz v3, :cond_9

    .line 300
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_7
    move-object v6, v12

    .line 303
    goto/16 :goto_0

    .line 301
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v3, :cond_a

    .line 300
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 303
    :cond_a
    :goto_9
    throw v12

    .line 301
    :catch_8
    move-exception v1

    .line 302
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 293
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 289
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_c
    move-exception v1

    move-object v5, v6

    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .locals 15

    .prologue
    .line 48
    const-string/jumbo v12, "load ODE config"

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 49
    new-instance v10, Ljava/io/File;

    const-string v12, "/efs/sec_efs"

    const-string/jumbo v13, "odeConfig"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v10, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    .line 51
    .local v1, "existFile":Z
    if-nez v1, :cond_1

    .line 52
    const-string v12, "ODE config file does not exist"

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 53
    new-instance v8, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    .line 122
    :cond_0
    :goto_0
    return-object v8

    .line 56
    :cond_1
    const/4 v8, 0x0

    .line 57
    .local v8, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/4 v2, 0x0

    .line 59
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    .end local v8    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .local v9, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    .line 64
    .local v6, "lengthAID":I
    if-eqz v6, :cond_2

    .line 65
    new-array v12, v6, [B

    iput-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 66
    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 67
    .local v11, "readByteSize":I
    if-eq v11, v6, :cond_2

    .line 68
    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lengthAID : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v11    # "readByteSize":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 76
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 77
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 79
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 81
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v7

    .line 82
    .local v7, "lengthCsName":I
    if-eqz v7, :cond_3

    .line 83
    new-array v12, v7, [B

    iput-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 84
    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 85
    .restart local v11    # "readByteSize":I
    if-eq v11, v7, :cond_3

    .line 86
    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lengthCsName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v11    # "readByteSize":I
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4

    .line 93
    .local v4, "lenCertAlias":I
    if-eqz v4, :cond_4

    .line 94
    new-array v12, v4, [B

    iput-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 95
    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 96
    .restart local v11    # "readByteSize":I
    if-eq v11, v4, :cond_4

    .line 97
    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lenCertAlias : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v11    # "readByteSize":I
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    .line 101
    .local v5, "lenCertLocation":I
    if-eqz v5, :cond_5

    .line 102
    new-array v12, v5, [B

    iput-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 103
    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 104
    .restart local v11    # "readByteSize":I
    if-eq v11, v5, :cond_5

    .line 105
    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lenCertLocation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v11    # "readByteSize":I
    :cond_5
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 114
    .end local v4    # "lenCertAlias":I
    .end local v5    # "lenCertLocation":I
    .end local v6    # "lengthAID":I
    .end local v7    # "lengthCsName":I
    .end local v9    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v8    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :goto_1
    if-eqz v2, :cond_0

    .line 116
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    const/4 v8, 0x0

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v8    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 12
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .prologue
    .line 326
    const-string/jumbo v10, "save Keyguard config"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, "saveConfig":Z
    if-nez p0, :cond_0

    .line 330
    const-string v10, "KeyguardProperties is null"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v9, v8

    .line 387
    .end local v8    # "saveConfig":Z
    .local v9, "saveConfig":I
    :goto_0
    return v9

    .line 334
    .end local v9    # "saveConfig":I
    .restart local v8    # "saveConfig":Z
    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 335
    const-string v10, "checkKeyguardProperty false"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v9, v8

    .line 336
    .restart local v9    # "saveConfig":I
    goto :goto_0

    .line 339
    .end local v9    # "saveConfig":I
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v10, "/efs/sec_efs"

    const-string/jumbo v11, "keyguardConfig"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v6, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 341
    .local v3, "existFile":Z
    const/4 v10, 0x1

    if-ne v10, v3, :cond_2

    .line 342
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    .line 343
    .local v1, "deleteFile":Z
    if-nez v1, :cond_2

    .line 344
    const-string/jumbo v10, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v9, v8

    .line 345
    .restart local v9    # "saveConfig":I
    goto :goto_0

    .line 349
    .end local v1    # "deleteFile":Z
    .end local v9    # "saveConfig":I
    :cond_2
    const/4 v4, 0x0

    .line 351
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 354
    .local v0, "csName":[B
    array-length v7, v0

    .line 355
    .local v7, "lengthcsName":I
    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 356
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 357
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    if-lez v10, :cond_4

    .line 358
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 359
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 363
    :goto_1
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 364
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 365
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 366
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 367
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 368
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    const/4 v8, 0x1

    .line 377
    if-eqz v5, :cond_6

    .line 379
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .end local v0    # "csName":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "lengthcsName":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v9, v8

    .line 387
    .restart local v9    # "saveConfig":I
    goto :goto_0

    .line 361
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "saveConfig":I
    .restart local v0    # "csName":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "lengthcsName":I
    :cond_4
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 370
    .end local v0    # "csName":[B
    .end local v7    # "lengthcsName":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 371
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v10, "saveKeyguardConfig : IOException"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    if-eqz v4, :cond_3

    .line 379
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 380
    :catch_1
    move-exception v2

    .line 381
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    const/4 v8, 0x0

    .line 383
    goto :goto_2

    .line 380
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "csName":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "lengthcsName":I
    :catch_2
    move-exception v2

    .line 381
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    const/4 v8, 0x0

    move-object v4, v5

    .line 383
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 373
    .end local v0    # "csName":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "lengthcsName":I
    :catch_3
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    const-string/jumbo v10, "saveKeyguardConfig : Exception"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 377
    if-eqz v4, :cond_3

    .line 379
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 380
    :catch_4
    move-exception v2

    .line 381
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    const/4 v8, 0x0

    .line 383
    goto :goto_2

    .line 377
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v4, :cond_5

    .line 379
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 383
    :cond_5
    :goto_6
    throw v10

    .line 380
    :catch_5
    move-exception v2

    .line 381
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    const/4 v8, 0x0

    goto :goto_6

    .line 377
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 373
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 370
    :catch_7
    move-exception v2

    goto :goto_3

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "csName":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "lengthcsName":I
    :cond_6
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 10
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 142
    const-string/jumbo v8, "save ODE config"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 143
    const/4 v6, 0x0

    .line 145
    .local v6, "saveConfig":Z
    if-nez p0, :cond_0

    .line 146
    const-string v8, "ODEProperties is null"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v7, v6

    .line 238
    .end local v6    # "saveConfig":Z
    .local v7, "saveConfig":I
    :goto_0
    return v7

    .line 150
    .end local v7    # "saveConfig":I
    .restart local v6    # "saveConfig":Z
    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 151
    const-string v8, "checkODEProperties false"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v7, v6

    .line 152
    .restart local v7    # "saveConfig":I
    goto :goto_0

    .line 154
    .end local v7    # "saveConfig":I
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sec_efs"

    const-string/jumbo v9, "odeConfig"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v5, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    .line 156
    .local v2, "existFile":Z
    const/4 v8, 0x1

    if-ne v8, v2, :cond_2

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 158
    .local v0, "deleteFile":Z
    if-nez v0, :cond_2

    .line 159
    const-string/jumbo v8, "failed to delete the existing ODE config file"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    move v7, v6

    .line 160
    .restart local v7    # "saveConfig":I
    goto :goto_0

    .line 169
    .end local v0    # "deleteFile":Z
    .end local v7    # "saveConfig":I
    :cond_2
    const/4 v3, 0x0

    .line 171
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 173
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 175
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v8, v8

    if-lez v8, :cond_4

    .line 176
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 177
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 182
    :goto_1
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 183
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 184
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 186
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 187
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 188
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 189
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 190
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 191
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 193
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v8, v8

    if-lez v8, :cond_5

    .line 194
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 195
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 200
    :goto_2
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 201
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 202
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v8, v8

    if-lez v8, :cond_6

    .line 203
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 204
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 208
    :goto_3
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v8, v8

    if-lez v8, :cond_7

    .line 209
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 210
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :goto_4
    const/4 v6, 0x1

    move-object v3, v4

    .line 228
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v3, :cond_3

    .line 230
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_6
    move v7, v6

    .line 238
    .restart local v7    # "saveConfig":I
    goto/16 :goto_0

    .line 179
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "saveConfig":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 216
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 218
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 219
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 220
    const/4 v6, 0x0

    .line 226
    goto :goto_5

    .line 197
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 221
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 223
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 225
    const/4 v6, 0x0

    goto :goto_5

    .line 206
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_3

    .line 212
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 231
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 233
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    const/4 v6, 0x0

    goto :goto_6

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_8

    .line 216
    :catch_4
    move-exception v1

    goto :goto_7
.end method
