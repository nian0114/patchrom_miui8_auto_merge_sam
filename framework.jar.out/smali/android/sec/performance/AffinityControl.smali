.class public Landroid/sec/performance/AffinityControl;
.super Ljava/lang/Object;
.source "AffinityControl.java"


# static fields
.field public static final DEBUG:Z

.field private static final HMP_CORE_FRONT:I = 0x0

.field private static final HMP_CORE_REAR:I = 0x1

.field private static final HMP_PROPERTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AffinityControl"

.field private static nBig:[I

.field private static nLittle:[I

.field private static strHmpCore:[Ljava/lang/String;


# instance fields
.field private bigIndex:I

.field private littleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/performance/AffinityControl;->DEBUG:Z

    sput-object v2, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    sput-object v2, Landroid/sec/performance/AffinityControl;->nLittle:[I

    sput-object v2, Landroid/sec/performance/AffinityControl;->nBig:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/sec/performance/AffinityControl;->littleIndex:I

    iput v4, p0, Landroid/sec/performance/AffinityControl;->bigIndex:I

    const-string v4, "AffinityControl"

    const-string v5, "[Java Side], AffinityControl Class Initialized"

    invoke-static {v4, v5}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ""

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    sget-object v4, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v8, :cond_1

    const-string v4, "B"

    sget-object v5, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v6, p0, Landroid/sec/performance/AffinityControl;->littleIndex:I

    iput v7, p0, Landroid/sec/performance/AffinityControl;->bigIndex:I

    :goto_0
    sget-object v4, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v5, p0, Landroid/sec/performance/AffinityControl;->littleIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, Landroid/sec/performance/AffinityControl;->nLittle:[I

    sget-object v4, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v5, p0, Landroid/sec/performance/AffinityControl;->bigIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, Landroid/sec/performance/AffinityControl;->nBig:[I

    const/4 v3, 0x0

    .local v3, "offsetLittle":I
    sget-object v4, Landroid/sec/performance/AffinityControl;->nLittle:[I

    array-length v2, v4

    .local v2, "offsetBig":I
    iget v4, p0, Landroid/sec/performance/AffinityControl;->littleIndex:I

    if-ne v4, v6, :cond_0

    sget-object v4, Landroid/sec/performance/AffinityControl;->nBig:[I

    array-length v3, v4

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Landroid/sec/performance/AffinityControl;->nLittle:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    sget-object v4, Landroid/sec/performance/AffinityControl;->nLittle:[I

    add-int v5, v0, v3

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "offsetBig":I
    .end local v3    # "offsetLittle":I
    :cond_1
    iput v7, p0, Landroid/sec/performance/AffinityControl;->littleIndex:I

    iput v6, p0, Landroid/sec/performance/AffinityControl;->bigIndex:I

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "offsetBig":I
    .restart local v3    # "offsetLittle":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v4, Landroid/sec/performance/AffinityControl;->nBig:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/sec/performance/AffinityControl;->nBig:[I

    add-int v5, v1, v2

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "offsetBig":I
    .end local v3    # "offsetLittle":I
    :cond_3
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/sec/performance/AffinityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native native_set_affinity(I[I)I
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-16"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v3

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public ClearAffinity(I)I
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    const-string v5, "AffinityControl"

    const-string v6, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "num_of_core":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "num_core":I
    add-int/lit8 v5, v2, 0x1

    new-array v1, v5, [I

    .local v1, "input_cpu_list":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v5

    if-ne v5, v4, :cond_1

    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :goto_1
    return v4

    .restart local v0    # "i":I
    .restart local v1    # "input_cpu_list":[I
    .restart local v2    # "num_core":I
    :cond_1
    const-string v4, "AffinityControl"

    const-string v5, "clear_affinity_success"

    invoke-static {v4, v5}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :cond_2
    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public varargs SetAffinity(I[I)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "cpu_list"    # [I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "AffinityControl"

    const-string v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "AffinityControl"

    const-string v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetAffinityForBig(I)I
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    const-string v1, ""

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/sec/performance/AffinityControl;->nBig:[I

    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "AffinityControl"

    const-string v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "AffinityControl"

    const-string v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetAffinityForLittle(I)I
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    const-string v1, ""

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/sec/performance/AffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "AffinityControl"

    const-string v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "AffinityControl"

    const-string v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
