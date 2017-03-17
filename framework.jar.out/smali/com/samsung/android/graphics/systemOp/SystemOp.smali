.class public Lcom/samsung/android/graphics/systemOp/SystemOp;
.super Ljava/lang/Object;
.source "SystemOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;,
        Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    }
.end annotation


# static fields
.field public static final CoreType_ERROR:I = 0x0

.field public static final CoreType_kCoreTypeBig:I = 0x2

.field public static final CoreType_kCoreTypeLittle:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static getCPUCoreCount()I
    .locals 8

    .prologue
    .line 27
    const/4 v3, 0x0

    .line 28
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 31
    .local v1, "coreCount":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 35
    const-string v5, "cpu "

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    const-string v5, "cpu "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    const-string/jumbo v5, "noncpu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v4    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v1

    .line 50
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCPUCoreStatus(I)Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    .locals 8
    .param p0, "coreNu"    # I

    .prologue
    const/4 v5, 0x0

    .line 67
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;-><init>()V

    .line 68
    .local v1, "coreStatus":Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 69
    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    .line 70
    const/4 v3, 0x0

    .line 73
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    const/4 v5, 0x1

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 87
    :goto_0
    const-string v5, ": "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 89
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    .line 109
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 82
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    const/4 v5, 0x2

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 104
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    const/4 v5, 0x0

    :try_start_3
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    goto :goto_0

    .line 90
    .restart local v4    # "strs":[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 91
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    goto :goto_1

    .line 93
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static getCpuInfo()Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 124
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;-><init>()V

    .line 125
    .local v1, "cpuInfo":Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;

    .line 126
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;

    .line 127
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    .line 128
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    .line 129
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    .line 130
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    .line 131
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    .line 132
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;

    .line 134
    const/4 v4, 0x0

    .line 137
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 142
    const-string v6, ": "

    const/4 v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "strs":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v8, :cond_0

    .line 145
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Processor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 146
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAVA getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1

    .line 147
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Features"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 148
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 179
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------ getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    :try_start_4
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU implementer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 150
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 152
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    goto/16 :goto_0

    .line 154
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU architecture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 155
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    :cond_5
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU variant"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 157
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 159
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    goto/16 :goto_0

    .line 161
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU part"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 162
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 164
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    goto/16 :goto_0

    .line 166
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU revision"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 167
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    goto/16 :goto_0

    .line 168
    :cond_8
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 169
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public static getDFSPowerLevel()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplayGetFPS()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDisplayRefreshRate()F
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Lcom/samsung/android/graphics/systemOp/SystemOp;->getDFSPowerLevel()I

    move-result v0

    .line 250
    .local v0, "dfs":I
    if-lez v0, :cond_0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 251
    :cond_0
    const-string v2, "SystemOp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRefreshRate getDFSPowerLevel failed: dfs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    .line 259
    :goto_0
    return v1

    .line 257
    :cond_1
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x42300000    # 44.0f

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 259
    .local v1, "refreshRate":F
    goto :goto_0
.end method

.method public static isDFSAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    .line 234
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v1, v3}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplaySetFPS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSamsungDevice()Z
    .locals 2

    .prologue
    .line 16
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 17
    .local v0, "brand":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 22
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDFSPowerLevel(I)Z
    .locals 4
    .param p0, "powerLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplaySetFPS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDisplayRefreshRate(F)Z
    .locals 4
    .param p0, "fps"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    .line 263
    cmpg-float v2, p0, v3

    if-ltz v2, :cond_0

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    .line 264
    :cond_0
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate input fps is outof range [15-60] "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return v1

    .line 267
    :cond_1
    sub-float v2, p0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42300000    # 44.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 269
    .local v0, "DFSPowerLevel":I
    invoke-static {v0}, Lcom/samsung/android/graphics/systemOp/SystemOp;->setDFSPowerLevel(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate java failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
