.class public final Landroid/media/SamsungAudioManager$AudioLog;
.super Ljava/lang/Object;
.source "SamsungAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioLog"
.end annotation


# static fields
.field public static final HIGH:I = 0x4948

.field public static final LOW:I = 0x4f4c

.field public static final MID:I = 0x494d

.field public static final SLOG:I

.field private static debugLevel:I

.field public static isSecLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x4f4c

    .line 40
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/SamsungAudioManager$AudioLog;->isSecLogEnable:Z

    .line 49
    sput v4, Landroid/media/SamsungAudioManager$AudioLog;->debugLevel:I

    .line 53
    const-string v1, "1"

    const-string/jumbo v2, "persist.log.seclevel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/media/SamsungAudioManager$AudioLog;->isSecLogEnable:Z

    .line 57
    :try_start_0
    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/media/SamsungAudioManager$AudioLog;->debugLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v0, "ne":Ljava/lang/NumberFormatException;
    :goto_0
    return-void

    .line 58
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 59
    .restart local v0    # "ne":Ljava/lang/NumberFormatException;
    sput v4, Landroid/media/SamsungAudioManager$AudioLog;->debugLevel:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 65
    sget-boolean v0, Landroid/media/SamsungAudioManager$AudioLog;->isSecLogEnable:Z

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const/16 v1, 0x4f4c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x494d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4948

    if-ne p1, v1, :cond_0

    .line 67
    :cond_2
    sget v1, Landroid/media/SamsungAudioManager$AudioLog;->debugLevel:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
