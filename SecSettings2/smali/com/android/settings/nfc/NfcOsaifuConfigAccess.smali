.class public Lcom/android/settings_ex/nfc/NfcOsaifuConfigAccess;
.super Ljava/lang/Object;
.source "NfcOsaifuConfigAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/osaifu/osaifu.cfg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "targetConf":Ljava/io/File;
    const/4 v0, 0x0

    .line 73
    .local v0, "confFileStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 75
    .local v3, "returnValue":Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    const/4 v3, 0x0

    .line 106
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .local v1, "confFileStream":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "00001,0"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-string v5, "00001,0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 88
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    move-object v0, v1

    .line 103
    .end local v1    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "confFileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 82
    .end local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "confFileStream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_3
    const-string v5, "00001,1"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    const-string v5, "00001,1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 90
    .end local v1    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    const/4 v3, 0x0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    const/4 v3, 0x0

    .line 104
    goto :goto_0

    .line 84
    .end local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "confFileStream":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_6
    const-string v5, "00001,2"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const-string v5, "00001,2"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 92
    :catch_2
    move-exception v2

    move-object v0, v1

    .line 93
    .end local v1    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    const/4 v3, 0x0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 100
    :catch_3
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    const/4 v3, 0x0

    .line 104
    goto :goto_0

    .line 100
    .end local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "confFileStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    const/4 v3, 0x0

    move-object v0, v1

    .line 104
    .end local v1    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "confFileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 97
    :goto_4
    if-eqz v0, :cond_6

    .line 98
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 103
    :cond_6
    :goto_5
    throw v5

    .line 100
    :catch_5
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    const/4 v3, 0x0

    goto :goto_5

    .line 96
    .end local v0    # "confFileStream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "confFileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "confFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "confFileStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 92
    :catch_6
    move-exception v2

    goto :goto_3

    .line 89
    :catch_7
    move-exception v2

    goto :goto_2
.end method
