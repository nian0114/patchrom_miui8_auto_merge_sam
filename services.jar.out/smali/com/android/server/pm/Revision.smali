.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .locals 16

    .prologue
    const/4 v3, 0x0

    .local v3, "buildDate":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "priority":I
    const/4 v8, 0x0

    .local v8, "index":I
    const/4 v1, 0x0

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    const/4 v12, 0x4

    new-array v0, v12, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/sepolicy"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/io/File;

    const-string v14, "sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-object v13, v0, v12

    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    add-int/lit8 v13, v11, -0x1

    aget-object v13, v0, v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v6, 0x0

    :cond_2
    :goto_2
    return-object v3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_3
    const/16 v12, 0x3d

    :try_start_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_4

    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    throw v12

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, "BD"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "buildDate":Ljava/lang/String;
    .local v4, "buildDate":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "buildDate":Ljava/lang/String;
    .restart local v3    # "buildDate":Ljava/lang/String;
    :cond_5
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .locals 17

    .prologue
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    .local v9, "info":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "priority":I
    const/4 v8, 0x0

    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    const-string v14, "GOOGLE_POLICY"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v13, 0x0

    :try_start_0
    const-string v14, "Enterprise Policy"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_3
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v12, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    const-string v13, "VE="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    :cond_6
    const-string v13, "BD="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    :cond_7
    const/4 v13, 0x0

    aget-object v13, v9, v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v9, v13

    :cond_8
    const/4 v13, 0x1

    aget-object v13, v9, v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_9
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v6, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v5

    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_a
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .locals 17

    .prologue
    const/4 v11, 0x0

    .local v11, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "priority":I
    const/4 v8, 0x0

    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, "in":Ljava/io/DataInputStream;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v11, Ljava/lang/String;

    .end local v11    # "version":Ljava/lang/String;
    const-string v13, "GOOGLE_POLICY"

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v11

    .restart local v11    # "version":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v10

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    :try_start_2
    new-instance v12, Ljava/lang/String;

    const-string v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "version":Ljava/lang/String;
    .local v12, "version":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v6, 0x0

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v6, 0x0

    :cond_3
    :goto_4
    if-eqz v11, :cond_4

    const/4 v11, 0x0

    :cond_4
    const-string v13, "Revision"

    const-string v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    goto/16 :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_5
    const/16 v13, 0x3d

    :try_start_7
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v13, -0x1

    if-ne v8, v13, :cond_6

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_6
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v11    # "version":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    goto :goto_5

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_8
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static selinux_android_load_priority()I
    .locals 23

    .prologue
    const-wide/16 v14, 0x0

    .local v14, "sepolicy_version_highest":J
    const-wide/16 v16, 0x0

    .local v16, "sepolicy_version_new":J
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v5, 0x0

    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .local v18, "tmp_version":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "mdm_policy_status":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v13, "spd_and_version":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v11, "ram_and_version":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "selinux_policy_priority":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    const/16 v19, 0x0

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/sepolicy"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/spota/sepolicy_version"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x2

    new-instance v20, Ljava/io/File;

    const-string v21, "sepolicy_version"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v2, v19

    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v19, "GOOGLE_POLICY"

    const-string v20, "selinux.policy_version"

    const-string v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x3

    :goto_0
    return v19

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    cmp-long v19, v16, v14

    if-lez v19, :cond_1

    move-wide/from16 v14, v16

    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v13

    add-int/lit8 v12, v7, 0x1

    :cond_2
    :goto_1
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x0

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    :cond_5
    aget-object v19, v2, v7

    if-eqz v19, :cond_6

    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v19, v2, v7

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    if-nez v7, :cond_0

    :try_start_4
    const-string v19, "persist.security.mdm.policy"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v19

    if-eqz v19, :cond_0

    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v8, 0x0

    :cond_8
    :goto_5
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_9

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_d

    const/4 v12, 0x2

    const-string v19, "Revision"

    const-string v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    if-nez v12, :cond_a

    const/4 v12, 0x3

    :cond_a
    move/from16 v19, v12

    goto/16 :goto_0

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_b
    :try_start_6
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    cmp-long v19, v16, v14

    if-lez v19, :cond_2

    add-int/lit8 v12, v7, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_7
    const-string v19, "Revision"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File not found at: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v2, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_d
    const/4 v12, 0x3

    const-string v19, "Revision"

    const-string v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "spd_and_version"    # Ljava/lang/String;
    .param p1, "ram_and_version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "cmp_val":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static selinux_compare_spd_ram()I
    .locals 22

    .prologue
    const-wide/16 v12, 0x0

    .local v12, "sepolicy_version_highest":J
    const-wide/16 v14, 0x0

    .local v14, "sepolicy_version_new":J
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v5, 0x0

    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .local v17, "tmp_version":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const-string v18, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v16, "spd_and_version":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v18, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v10, "ram_and_version":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "selinux_policy_priority":I
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v2, v0, [Ljava/io/File;

    const/16 v18, 0x0

    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    const-string v21, "security/spota/sepolicy_version"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v19, v2, v18

    const/16 v18, 0x1

    new-instance v19, Ljava/io/File;

    const-string v20, "sepolicy_version"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v19, v2, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-object v19, v2, v18

    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v18, "GOOGLE_POLICY"

    const-string v19, "selinux.policy_version"

    const-string v20, "Unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x3

    :goto_0
    return v18

    :cond_0
    :goto_1
    aget-object v18, v2, v7

    if-eqz v18, :cond_7

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v18, v2, v7

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v14

    if-nez v7, :cond_5

    cmp-long v18, v14, v12

    if-lez v18, :cond_1

    move-wide v12, v14

    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v16

    add-int/lit8 v11, v7, 0x1

    :cond_2
    :goto_2
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v8, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_5
    :try_start_4
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    cmp-long v18, v14, v12

    if-lez v18, :cond_2

    add-int/lit8 v11, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v11, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v8, 0x0

    :cond_9
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_a

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "Revision"

    const-string v19, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    move/from16 v18, v11

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "Revision"

    const-string v19, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    const-string v18, "Revision"

    const-string v19, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "and_version":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v1, "default_version":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .end local v1    # "default_version":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "default_version":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "version":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "default_full_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Revision"

    const-string v5, "selinux_get_full_version : Couldn\'t extract version name "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "default_full_name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .restart local v0    # "default_full_name":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    goto :goto_0
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    move-object v3, p0

    .local v3, "line":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .local v0, "default_version":J
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .end local v0    # "default_version":J
    :goto_0
    return-wide v0

    .restart local v0    # "default_version":J
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method
