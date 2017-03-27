.class public Lcom/android/settings/location/SatelliteViewLog;
.super Landroid/app/Activity;
.source "SatelliteViewLog.java"


# instance fields
.field private btn_clear:Landroid/widget/Button;

.field private display:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileLen:I

.field private fileName:Ljava/lang/String;

.field private in:Ljava/io/FileInputStream;

.field private out:Ljava/io/FileOutputStream;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "/data/AGPSLog.txt"

    iput-object v0, p0, Lcom/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/SatelliteViewLog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteViewLog;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteViewLog;->clearFile()V

    return-void
.end method

.method private clearFile()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    .line 93
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 95
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 97
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    .line 98
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 101
    const v1, 0x7f0e166c

    invoke-virtual {p0, v1}, Lcom/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "XIA"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/location/SatelliteViewLog;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    .line 36
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 38
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v5, :cond_1

    .line 41
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    .line 42
    iget v2, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    new-array v1, v2, [B

    .line 43
    .local v1, "temp":[B
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 46
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "temp":[B
    :cond_0
    :goto_0
    const v2, 0x7f0401c4

    invoke-virtual {p0, v2}, Lcom/android/settings/location/SatelliteViewLog;->setContentView(I)V

    .line 65
    const v2, 0x7f0d047f

    invoke-virtual {p0, v2}, Lcom/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    .line 67
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/location/SatelliteViewLog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/SatelliteViewLog$1;-><init>(Lcom/android/settings/location/SatelliteViewLog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v5, :cond_2

    .line 76
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    :goto_1
    const v2, 0x7f0d047e

    invoke-virtual {p0, v2}, Lcom/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void

    .line 53
    :cond_1
    const v2, 0x7f0e166c

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "XIA"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/location/SatelliteViewLog;->finish()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
