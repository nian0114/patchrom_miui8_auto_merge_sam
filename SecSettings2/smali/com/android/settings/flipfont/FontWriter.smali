.class public Lcom/android/settings_ex/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 46
    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 135
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 144
    .end local v2    # "i":I
    .local v0, "bRet":Z
    :goto_1
    return v0

    .line 141
    .end local v0    # "bRet":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bRet":Z
    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 14
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 154
    move-object/from16 v9, p2

    .line 155
    .local v9, "myInputStream":Ljava/io/InputStream;
    move-object v8, p1

    .line 156
    .local v8, "myDirectory":Ljava/io/File;
    move-object/from16 v5, p3

    .line 157
    .local v5, "myDestination":Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, "err_filecopy":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 162
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Directory traversal attack!"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 182
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 185
    .local v6, "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 186
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 189
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v9, :cond_1

    .line 193
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 196
    :cond_1
    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 197
    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 204
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 207
    .restart local v6    # "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_3

    .line 208
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 209
    const/4 v2, 0x1

    .line 212
    :cond_3
    return v2

    .line 164
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "length":J
    .restart local v1    # "dest":Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 165
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 166
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 167
    new-instance v10, Ljava/io/BufferedOutputStream;

    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v10, "os":Ljava/io/BufferedOutputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 169
    .local v0, "b":[B
    const/4 v11, 0x0

    .line 171
    .local v11, "read":I
    :goto_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_7

    .line 172
    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 191
    .end local v0    # "b":[B
    .end local v1    # "dest":Ljava/io/File;
    .end local v10    # "os":Ljava/io/BufferedOutputStream;
    .end local v11    # "read":I
    :catchall_0
    move-exception v12

    .line 192
    if-eqz v9, :cond_5

    .line 193
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 196
    :cond_5
    iget-object v13, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_6

    .line 197
    iget-object v13, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 200
    :cond_6
    :goto_2
    throw v12

    .line 175
    .restart local v0    # "b":[B
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v10    # "os":Ljava/io/BufferedOutputStream;
    .restart local v11    # "read":I
    :cond_7
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 176
    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 177
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v9, :cond_8

    .line 193
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 196
    :cond_8
    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 197
    iget-object v12, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v12

    goto :goto_0

    .end local v0    # "b":[B
    .end local v1    # "dest":Ljava/io/File;
    .end local v10    # "os":Ljava/io/BufferedOutputStream;
    .end local v11    # "read":I
    :catch_2
    move-exception v13

    goto :goto_2

    .restart local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "length":J
    :catch_3
    move-exception v12

    goto :goto_0
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 98
    const-string v2, "fonts"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "newFontDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 103
    return-object v0
.end method

.method public deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keepfolder"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v4, "fonts"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 112
    .local v2, "newFontDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "tmp":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 119
    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    aget-object v4, v3, v1

    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/app_fonts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "sFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "canonicalPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Directory traversal attack!"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "dest":Ljava/io/File;
    .end local v3    # "sFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v4, "persist.sys.flipfontpath"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 66
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v3    # "sFile":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 67
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 69
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 70
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 72
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_3

    .line 78
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v4

    goto :goto_0

    .line 76
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "dest":Ljava/io/File;
    .end local v3    # "sFile":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 77
    :try_start_5
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_4

    .line 78
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 81
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_5

    .line 82
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 85
    :cond_5
    :goto_1
    throw v4

    .line 84
    :catch_2
    move-exception v5

    goto :goto_1

    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_0
.end method
