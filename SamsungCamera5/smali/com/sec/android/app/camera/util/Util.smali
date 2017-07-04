.class public Lcom/sec/android/app/camera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEBUG:Z

.field private static DEFAULT_PADDING:F = 0.0f

.field public static final INVALID_CHAR:[Ljava/lang/String;

.field public static final NO_RECYCLE_INPUT:Z = false

.field public static final RECYCLE_INPUT:Z = true

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static mDecodingData:[B

.field private static mDefaultDeviceOrientation:I

.field private static mIsSystemSoundMute:Z

.field private static mRingerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v0, v1

    const-string v3, "/"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/util/Util;->INVALID_CHAR:[Ljava/lang/String;

    .line 100
    const/16 v0, 0x4000

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/app/camera/util/Util;->mDecodingData:[B

    .line 101
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    .line 103
    sput-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    .line 104
    sput v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static broadcastAppInApp(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "stopAppInAppIntent":Landroid/content/Intent;
    const-string v1, "stopFrom"

    const-string v2, "Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cvs"    # [Landroid/content/ContentValues;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public static broadcastMultipleStatusForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cvs"    # [Landroid/content/ContentValues;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public static broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public static byteArrayToInt([BI)I
    .locals 5
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 168
    mul-int/lit8 v1, v0, 0x8

    .line 169
    .local v1, "shift":I
    add-int v4, v0, p1

    aget-byte v2, p0, v4

    .line 170
    .local v2, "tmp":I
    if-gez v2, :cond_0

    .line 171
    add-int/lit16 v2, v2, 0x100

    .line 172
    :cond_0
    and-int/lit16 v4, v2, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "shift":I
    .end local v2    # "tmp":I
    :cond_1
    return v3
.end method

.method public static calculateOrientation(IZ)I
    .locals 4
    .param p0, "orientation"    # I
    .param p1, "isFlip"    # Z

    .prologue
    .line 178
    move v0, p0

    .line 179
    .local v0, "rotation":I
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v1, 0x5a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_1

    .line 181
    :cond_0
    if-eqz p1, :cond_2

    .line 182
    rem-int/lit16 v0, p0, 0x168

    .line 183
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    :goto_0
    return v0

    .line 185
    :cond_2
    add-int/lit16 v1, p0, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 186
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeBooleanToInt(Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static changeGraphicConfig()V
    .locals 8

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "fOut":Ljava/io/FileOutputStream;
    const-string v4, "1"

    .line 200
    .local v4, "value":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/graphics/fb0/csc_cfg"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "mGraphicConfig":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 204
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    if-eqz v2, :cond_2

    .line 215
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 221
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 216
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 218
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    if-eqz v1, :cond_0

    .line 215
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 216
    :catch_2
    move-exception v5

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    if-eqz v1, :cond_0

    .line 215
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 216
    :catch_4
    move-exception v5

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    if-eqz v1, :cond_0

    .line 215
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 216
    :catch_6
    move-exception v5

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_1

    .line 215
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 218
    :cond_1
    :goto_5
    throw v5

    .line 216
    :catch_7
    move-exception v6

    goto :goto_5

    .line 213
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 209
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 207
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 205
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static changeIntToBoolean(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 224
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEVTorCalError()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 233
    .local v6, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 234
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 239
    .local v8, "fwInfo":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/sys/class/camera/rear/rear_checkfw_user"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 240
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 241
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v7, "fr":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 247
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 250
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 265
    if-eqz v8, :cond_0

    :try_start_4
    const-string v10, "NG"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 266
    :cond_0
    const-string v10, "Util"

    const-string v11, "EVT or Cal error. please change your test device."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 274
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v9

    .line 242
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 252
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 254
    if-eqz v6, :cond_2

    .line 255
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 256
    :cond_2
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 258
    :catch_2
    move-exception v3

    .line 259
    .local v3, "err":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string v10, "Util"

    const-string v11, "file reading error"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    const/4 v9, 0x1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 270
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .line 251
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2

    .line 242
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 284
    if-le p0, p2, :cond_0

    .line 288
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 286
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 287
    goto :goto_0

    :cond_1
    move p2, p0

    .line 288
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    .line 303
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 304
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 306
    .local v0, "h":D
    if-gez p2, :cond_1

    move v2, v6

    .line 307
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 309
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 319
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 306
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 307
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 314
    .restart local v3    # "upperBound":I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 315
    goto :goto_2

    .line 316
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 319
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 342
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 345
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 347
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 348
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 354
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static convertExifOrientationToMediaOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 358
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 359
    const/16 v0, 0x5a

    .line 365
    :goto_0
    return v0

    .line 360
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 361
    const/16 v0, 0xb4

    goto :goto_0

    .line 362
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 363
    const/16 v0, 0x10e

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v14, 0x0

    .line 370
    .local v14, "result":Ljava/lang/String;
    if-eqz p0, :cond_8

    const-string v18, "storage/emulated"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 371
    const-string v18, "storage/emulated"

    const-string v19, "data/media"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 372
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v11, "directory":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_7

    .line 377
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v4, "camera":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 380
    .local v7, "dcim":Ljava/io/File;
    if-nez v7, :cond_0

    .line 381
    const-string v18, "Util"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail to get parent file of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x0

    .line 431
    .end local v4    # "camera":Ljava/io/File;
    .end local v7    # "dcim":Ljava/io/File;
    .end local v11    # "directory":Ljava/io/File;
    :goto_0
    return-object v18

    .line 385
    .restart local v4    # "camera":Ljava/io/File;
    .restart local v7    # "dcim":Ljava/io/File;
    .restart local v11    # "directory":Ljava/io/File;
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 386
    .local v15, "root":Ljava/io/File;
    if-nez v15, :cond_1

    .line 387
    const-string v18, "Util"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail to get parent file of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v18, 0x0

    goto :goto_0

    .line 391
    :cond_1
    const/4 v5, 0x0

    .line 392
    .local v5, "cameraString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 394
    .local v9, "dcimString":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 395
    .local v17, "root_files":[Ljava/io/File;
    if-nez v17, :cond_2

    .line 396
    const-string v18, "Util"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail to get file list of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v18, 0x0

    goto :goto_0

    .line 400
    :cond_2
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/io/File;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v16, v3, v12

    .line 401
    .local v16, "rootFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 402
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DCIM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_4

    .line 403
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 409
    .end local v16    # "rootFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 410
    .local v10, "dcim_files":[Ljava/io/File;
    if-nez v10, :cond_5

    .line 411
    const-string v18, "Util"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail to get file list of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 400
    .end local v10    # "dcim_files":[Ljava/io/File;
    .restart local v16    # "rootFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 415
    .end local v16    # "rootFile":Ljava/io/File;
    .restart local v10    # "dcim_files":[Ljava/io/File;
    :cond_5
    move-object v3, v10

    array-length v13, v3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_6

    aget-object v8, v3, v12

    .line 416
    .local v8, "dcimFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 417
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Camera"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_9

    .line 418
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 424
    .end local v8    # "dcimFile":Ljava/io/File;
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v9, :cond_7

    .line 425
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "convString":Ljava/lang/String;
    const-string v18, "storage/emulated"

    const-string v19, "data/media"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 429
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "camera":Ljava/io/File;
    .end local v5    # "cameraString":Ljava/lang/String;
    .end local v6    # "convString":Ljava/lang/String;
    .end local v7    # "dcim":Ljava/io/File;
    .end local v9    # "dcimString":Ljava/lang/String;
    .end local v10    # "dcim_files":[Ljava/io/File;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "root":Ljava/io/File;
    .end local v17    # "root_files":[Ljava/io/File;
    :cond_7
    const-string v18, "Util"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Convert filepath: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "directory":Ljava/io/File;
    :cond_8
    move-object/from16 v18, v14

    .line 431
    goto/16 :goto_0

    .line 415
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v4    # "camera":Ljava/io/File;
    .restart local v5    # "cameraString":Ljava/lang/String;
    .restart local v7    # "dcim":Ljava/io/File;
    .restart local v8    # "dcimFile":Ljava/io/File;
    .restart local v9    # "dcimString":Ljava/lang/String;
    .restart local v10    # "dcim_files":[Ljava/io/File;
    .restart local v11    # "directory":Ljava/io/File;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "root":Ljava/io/File;
    .restart local v17    # "root_files":[Ljava/io/File;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method public static convertToExifInterfaceOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 435
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    .line 436
    const/4 v0, 0x6

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const/16 v1, 0xb4

    if-ne p0, v1, :cond_2

    .line 438
    const/4 v0, 0x3

    goto :goto_0

    .line 439
    :cond_2
    const/16 v1, 0x10e

    if-ne p0, v1, :cond_3

    .line 440
    const/16 v0, 0x8

    goto :goto_0

    .line 441
    :cond_3
    const/16 v1, 0x168

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "data/media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string v1, "data/media"

    const-string v2, "storage/emulated"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert filepath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return-object v0
.end method

.method public static decodeExtendedRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "data"    # [B
    .param p1, "outRotation"    # [Ljava/lang/Integer;

    .prologue
    .line 466
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x20

    if-ge v14, v15, :cond_2

    .line 467
    :cond_0
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v2, 0x0

    .line 571
    :cond_1
    :goto_0
    return-object v2

    .line 472
    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p0, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p0, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p0, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p0, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    .line 473
    :cond_3
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v2, 0x0

    goto :goto_0

    .line 477
    :cond_4
    const/4 v13, 0x0

    .line 478
    .local v13, "width":I
    const/4 v6, 0x0

    .line 479
    .local v6, "height":I
    const/4 v10, 0x0

    .line 482
    .local v10, "rotation":I
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v13

    .line 483
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v6

    .line 484
    const/16 v14, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 491
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x20

    if-ge v14, v15, :cond_5

    .line 492
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeExtendedRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v5

    .line 487
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v2, 0x0

    goto :goto_0

    .line 498
    .end local v5    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 507
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x20

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 508
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x20

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x20

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 509
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 510
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 511
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 513
    move v9, v13

    .line 514
    .local v9, "realWidth":I
    move v8, v6

    .line 516
    .local v8, "realHeight":I
    if-eqz v10, :cond_7

    .line 518
    const/4 v11, 0x0

    .line 519
    .local v11, "transX":I
    const/4 v12, 0x0

    .line 521
    .local v12, "transY":I
    :goto_1
    if-gez v10, :cond_6

    .line 522
    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    .line 499
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "realHeight":I
    .end local v9    # "realWidth":I
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :catch_1
    move-exception v7

    .line 500
    .local v7, "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 524
    .end local v7    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "realHeight":I
    .restart local v9    # "realWidth":I
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_8

    .line 525
    move v9, v6

    .line 526
    move v8, v13

    .line 527
    const/16 v10, -0x5a

    .line 528
    const/4 v11, 0x0

    .line 529
    move v12, v13

    .line 548
    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 556
    .local v4, "cvBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 557
    .local v3, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 558
    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 559
    int-to-float v14, v10

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 560
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 561
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 563
    const/4 v2, 0x0

    .line 564
    move-object v2, v4

    .line 567
    .end local v3    # "cv":Landroid/graphics/Canvas;
    .end local v4    # "cvBmp":Landroid/graphics/Bitmap;
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :cond_7
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 568
    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, p1, v14

    goto/16 :goto_0

    .line 530
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_9

    .line 531
    const/16 v10, 0xb4

    .line 532
    move v11, v13

    .line 533
    move v12, v6

    goto :goto_2

    .line 534
    :cond_9
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_a

    .line 535
    move v9, v6

    .line 536
    move v8, v13

    .line 537
    const/16 v10, 0x5a

    .line 538
    move v11, v6

    .line 539
    const/4 v12, 0x0

    goto :goto_2

    .line 541
    :cond_a
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeExtendedRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, 0x0

    .line 543
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 549
    :catch_2
    move-exception v7

    .line 550
    .restart local v7    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x0

    .line 552
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "data"    # [B
    .param p1, "outRotation"    # [Ljava/lang/Integer;

    .prologue
    .line 584
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ge v14, v15, :cond_2

    .line 585
    :cond_0
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v2, 0x0

    .line 685
    :cond_1
    :goto_0
    return-object v2

    .line 590
    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p0, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p0, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p0, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p0, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    .line 591
    :cond_3
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v2, 0x0

    goto :goto_0

    .line 597
    :cond_4
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v13

    .line 598
    .local v13, "width":I
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v6

    .line 599
    .local v6, "height":I
    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 605
    .local v10, "rotation":I
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x10

    if-ge v14, v15, :cond_5

    .line 606
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v2, 0x0

    goto :goto_0

    .line 600
    .end local v6    # "height":I
    .end local v10    # "rotation":I
    .end local v13    # "width":I
    :catch_0
    move-exception v5

    .line 601
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x0

    goto :goto_0

    .line 612
    .end local v5    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "height":I
    .restart local v10    # "rotation":I
    .restart local v13    # "width":I
    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 621
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x10

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 622
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x10

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x10

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 623
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 624
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 625
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 627
    move v9, v13

    .line 628
    .local v9, "realWidth":I
    move v8, v6

    .line 630
    .local v8, "realHeight":I
    if-eqz v10, :cond_7

    .line 632
    const/4 v11, 0x0

    .line 633
    .local v11, "transX":I
    const/4 v12, 0x0

    .line 635
    .local v12, "transY":I
    :goto_1
    if-gez v10, :cond_6

    .line 636
    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    .line 613
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "realHeight":I
    .end local v9    # "realWidth":I
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :catch_1
    move-exception v7

    .line 614
    .local v7, "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 638
    .end local v7    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "realHeight":I
    .restart local v9    # "realWidth":I
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_8

    .line 639
    move v9, v6

    .line 640
    move v8, v13

    .line 641
    const/16 v10, -0x5a

    .line 642
    const/4 v11, 0x0

    .line 643
    move v12, v13

    .line 662
    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 670
    .local v4, "cvBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 671
    .local v3, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 672
    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 673
    int-to-float v14, v10

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 674
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 675
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 677
    const/4 v2, 0x0

    .line 678
    move-object v2, v4

    .line 681
    .end local v3    # "cv":Landroid/graphics/Canvas;
    .end local v4    # "cvBmp":Landroid/graphics/Bitmap;
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :cond_7
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 682
    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, p1, v14

    goto/16 :goto_0

    .line 644
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_9

    .line 645
    const/16 v10, 0xb4

    .line 646
    move v11, v13

    .line 647
    move v12, v6

    goto :goto_2

    .line 648
    :cond_9
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_a

    .line 649
    move v9, v6

    .line 650
    move v8, v13

    .line 651
    const/16 v10, 0x5a

    .line 652
    move v11, v6

    .line 653
    const/4 v12, 0x0

    goto :goto_2

    .line 655
    :cond_a
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    .line 657
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 663
    :catch_2
    move-exception v7

    .line 664
    .restart local v7    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v2, 0x0

    .line 666
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)V
    .locals 5
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 1808
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1810
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1817
    .end local v0    # "children":[Ljava/lang/String;
    :cond_0
    return-void

    .line 1813
    .restart local v0    # "children":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1814
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1813
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static disableAlertSound(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 691
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 692
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 694
    :cond_0
    return-void
.end method

.method public static disableSystemSound(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1863
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1864
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    .line 1865
    sget-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    if-nez v1, :cond_0

    .line 1866
    const/16 v1, -0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1868
    :cond_0
    return-void
.end method

.method public static disableVibrator(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 697
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 698
    return-void
.end method

.method public static doubleEquals(DD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 705
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableAlertSound(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 711
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 714
    :cond_0
    return-void
.end method

.method public static enableSystemSound(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1872
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1873
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1874
    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1876
    :cond_0
    return-void
.end method

.method public static enableVibrator(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 702
    return-void
.end method

.method public static findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I
    .locals 13
    .param p0, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;
    .param p1, "requestedMinFps"    # I
    .param p2, "requestedMaxFps"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 717
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requsted fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, "MIN_IDX":I
    const/4 v0, 0x1

    .line 721
    .local v0, "MAX_IDX":I
    new-array v3, v12, [I

    .line 722
    .local v3, "fpsRange":[I
    new-array v2, v12, [I

    .line 724
    .local v2, "bestFpsRange":[I
    invoke-virtual {p0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 726
    .local v4, "fpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 727
    const-string v7, "Util"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v3, 0x0

    .line 778
    .end local v3    # "fpsRange":[I
    :goto_0
    return-object v3

    .line 731
    .restart local v3    # "fpsRange":[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 732
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v10

    aput v7, v3, v10

    .line 733
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v11

    aput v7, v3, v11

    .line 735
    aget v7, v3, v11

    if-ne p2, v7, :cond_6

    .line 736
    aget v7, v3, v10

    if-ne p1, v7, :cond_1

    .line 738
    move-object v2, v3

    .line 739
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_1
    if-nez v5, :cond_2

    .line 743
    move-object v2, v3

    .line 744
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 748
    :cond_2
    move v6, v5

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_5

    .line 749
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v10

    aput v7, v3, v10

    .line 750
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v11

    aput v7, v3, v11

    .line 752
    aget v7, v3, v10

    if-ne p1, v7, :cond_3

    .line 754
    move-object v2, v3

    .line 755
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 757
    :cond_3
    aget v7, v3, v10

    if-le p1, v7, :cond_4

    .line 758
    move-object v2, v3

    .line 759
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 764
    :cond_5
    move-object v2, v3

    .line 765
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 768
    .end local v6    # "j":I
    :cond_6
    aget v7, v3, v11

    if-le p2, v7, :cond_7

    .line 769
    move-object v2, v3

    .line 770
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 731
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 776
    :cond_8
    move-object v2, v3

    .line 777
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z
    .locals 18
    .param p0, "movieFile"    # Ljava/io/RandomAccessFile;
    .param p1, "targetAtomType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findAtom() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v8, 0x4

    .line 784
    .local v8, "sizeBytes":I
    const/4 v12, 0x4

    .line 785
    .local v12, "typeBytes":I
    const/4 v13, 0x4

    new-array v7, v13, [B

    .line 786
    .local v7, "sizeBuffer":[B
    const/4 v13, 0x4

    new-array v9, v13, [B

    .line 788
    .local v9, "typeBuffer":[B
    const/4 v6, 0x0

    .line 790
    .local v6, "size":I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 791
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 793
    const-wide/16 v2, 0x0

    .line 794
    .local v2, "atomSize":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v5, v13, :cond_1

    .line 795
    const/16 v13, 0x8

    shl-long v14, v2, v13

    aget-byte v13, v7, v5

    and-int/lit16 v13, v13, 0xff

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v2, v14, v16

    .line 794
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 798
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v4, v9, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 800
    .local v4, "atomType":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 801
    const/4 v13, 0x1

    .line 812
    :goto_1
    return v13

    .line 803
    :cond_2
    const-wide/16 v14, 0x4

    sub-long v14, v2, v14

    const-wide/16 v16, 0x4

    sub-long v10, v14, v16

    .line 804
    .local v10, "skipSize":J
    const-wide/32 v14, 0x7fffffff

    cmp-long v13, v10, v14

    if-lez v13, :cond_3

    .line 805
    const v13, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 806
    const-wide/32 v14, 0x7fffffff

    sub-long/2addr v10, v14

    .line 808
    :cond_3
    long-to-int v13, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 810
    if-gtz v6, :cond_0

    .line 812
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static floatDivide(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 816
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 817
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 818
    .local v1, "val2":Ljava/math/BigDecimal;
    const/4 v2, 0x5

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static floatEquals(FF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 822
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatMulitiply(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 826
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 827
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 828
    .local v1, "val2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static getAspectRatio(II)D
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 832
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getAspectRatioType(D)I
    .locals 2
    .param p0, "ratio"    # D

    .prologue
    .line 836
    const-wide v0, 0x3ffc51eb851eb852L    # 1.77

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 837
    const/4 v0, 0x0

    .line 843
    :goto_0
    return v0

    .line 838
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    const/4 v0, 0x2

    goto :goto_0

    .line 840
    :cond_1
    const-wide v0, 0x3ff38e38e38e38e4L    # 1.2222222222222223

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    const/4 v0, 0x3

    goto :goto_0

    .line 843
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 848
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 849
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    invoke-static {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 850
    iget v1, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getConstantGrowthRateZoomRatio(IDI)F
    .locals 11
    .param p0, "len"    # I
    .param p1, "maxZoomRatio"    # D
    .param p3, "value"    # I

    .prologue
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 854
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, p0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 855
    .local v0, "zoomRatioDelta":D
    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    double-to-float v2, v2

    return v2
.end method

.method public static getCurrentTimeInMillis()J
    .locals 4

    .prologue
    .line 865
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 866
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDefaultDeviceOrientation()I
    .locals 1

    .prologue
    .line 870
    sget v0, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    return v0
.end method

.method public static getFormattedPictureSizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "pictureSize"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 881
    const-string v3, "M"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 883
    .local v1, "index":I
    if-ne v1, v7, :cond_1

    move-object v3, p0

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 884
    .local v2, "megaPixels":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 885
    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    float-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "formattedString":Ljava/lang/String;
    :goto_1
    if-eq v1, v7, :cond_0

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    :cond_0
    return-object v0

    .line 883
    .end local v0    # "formattedString":Ljava/lang/String;
    .end local v2    # "megaPixels":F
    :cond_1
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 887
    .restart local v2    # "megaPixels":F
    :cond_2
    const-string v3, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getHelpVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 897
    const/4 v1, 0x0

    .line 899
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 906
    :goto_0
    if-nez v1, :cond_0

    .line 907
    const/4 v2, 0x1

    .line 909
    :goto_1
    return v2

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 909
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 17
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;D)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 932
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    .line 933
    const/4 v6, 0x0

    .line 977
    :cond_0
    return-object v6

    .line 935
    :cond_1
    const/4 v6, 0x0

    .line 936
    .local v6, "optimalSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 944
    .local v4, "minDiff":D
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 945
    .local v2, "displaySize":Landroid/graphics/Point;
    const v11, 0x7f0901be

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/graphics/Point;->x:I

    .line 946
    const v11, 0x7f0901bf

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/graphics/Point;->y:I

    .line 947
    iget v11, v2, Landroid/graphics/Point;->y:I

    iget v12, v2, Landroid/graphics/Point;->x:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 949
    .local v10, "targetHeight":I
    if-gtz v10, :cond_2

    .line 951
    iget v10, v2, Landroid/graphics/Point;->y:I

    .line 955
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 956
    .local v7, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v12, v11

    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v14, v11

    div-double v8, v12, v14

    .line 957
    .local v8, "ratio":D
    sub-double v12, v8, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_3

    .line 959
    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_3

    .line 960
    move-object v6, v7

    .line 961
    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 967
    .end local v7    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v8    # "ratio":D
    :cond_4
    if-nez v6, :cond_0

    .line 968
    const-string v11, "Util"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 970
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 971
    .restart local v7    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_5

    .line 972
    move-object v6, v7

    .line 973
    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method public static getOrientationFromDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 981
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 982
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 992
    :goto_0
    :pswitch_0
    return v1

    .line 986
    :pswitch_1
    const/16 v1, 0x10e

    goto :goto_0

    .line 988
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 990
    :pswitch_3
    const/16 v1, 0x5a

    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1831
    const/4 v1, 0x0

    .line 1832
    .local v1, "str":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getMegaPixelString(I)Ljava/lang/String;

    move-result-object v0

    .line 1833
    .local v0, "megaPixelStr":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 1837
    :cond_0
    const v2, 0x7f08005f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1849
    :cond_1
    :goto_0
    return-object v1

    .line 1838
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 1842
    :cond_3
    const v2, 0x7f08005d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1843
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 1847
    :cond_5
    const v2, 0x7f08005e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v1, 0x0

    .line 996
    if-nez p0, :cond_0

    .line 997
    const/4 v7, 0x0

    .line 1005
    :goto_0
    return-object v7

    .line 999
    :cond_0
    const/4 v7, 0x0

    .line 1001
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1002
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1004
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1005
    goto :goto_0
.end method

.method public static getRobotoLightBOLDFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1009
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1013
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoRegular()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1017
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getSlowMotionTimeBytes(Ljava/io/RandomAccessFile;)I
    .locals 2
    .param p0, "movieFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1025
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1026
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1027
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1028
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1030
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1031
    .local v1, "textRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1033
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1034
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1036
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method public static getStringInDefaultLocale(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcesId"    # I

    .prologue
    .line 1041
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1042
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1043
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringWidth(Ljava/lang/String;F)F
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F

    .prologue
    .line 1047
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1048
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1049
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1050
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sget v1, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1054
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1055
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1056
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1057
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1058
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sget v1, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeId"    # I

    .prologue
    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08005a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZoomDivideFactor(I)I
    .locals 1
    .param p0, "supportMaxZoomValue"    # I

    .prologue
    .line 1820
    sparse-switch p0, :sswitch_data_0

    .line 1826
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1822
    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 1824
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1820
    :sswitch_data_0
    .sparse-switch
        0x18f -> :sswitch_1
        0x31f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAFWForBYOD(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1896
    if-eqz p0, :cond_0

    .line 1897
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1898
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1899
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 1900
    .local v2, "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1902
    .local v0, "mine":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1903
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1909
    .end local v0    # "mine":Landroid/os/UserHandle;
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAFWForCL(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1913
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1914
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 1915
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1916
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1917
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1918
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1919
    const/4 v4, 0x1

    .line 1924
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isAFWMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1928
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWForCL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 1067
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    const/4 v1, 0x1

    .line 1071
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceLandscape(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 1099
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1101
    .local v0, "rotation":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceReverse(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1112
    .local v0, "rotation":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1113
    :cond_0
    const/4 v1, 0x1

    .line 1117
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceScreenWideRatio()Z
    .locals 4

    .prologue
    .line 1121
    const v2, 0x7f0901bd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    .line 1122
    .local v1, "screen_width":F
    const v2, 0x7f0901bc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 1124
    .local v0, "screen_height":F
    div-float v2, v1, v0

    const v3, 0x3fe38e39

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEasyCameraSettingOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1129
    .local v1, "easy_state":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_camera"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1130
    .local v0, "camera_state":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1133
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalEffectSupported()Z
    .locals 1

    .prologue
    .line 1137
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const/4 v0, 0x0

    .line 1140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 1080
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    :cond_0
    const/4 v1, 0x1

    .line 1084
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKNOXMode()Z
    .locals 2

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1151
    const/4 v0, 0x1

    .line 1153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKNOXMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1157
    invoke-static {p0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1158
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "true"

    const-string v2, "isKnoxMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    const/4 v1, 0x1

    .line 1161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1144
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1145
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLGTFeature()Z
    .locals 2

    .prologue
    .line 1093
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

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

.method public static isLensDistortionFeature()Z
    .locals 2

    .prologue
    .line 1166
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    const/4 v1, 0x0

    .line 1170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1183
    const/4 v7, 0x0

    .line 1184
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1185
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1186
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 1188
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1189
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1190
    .local v8, "volumeName":Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    :cond_0
    const/4 v7, 0x1

    .line 1193
    .end local v8    # "volumeName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_2
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v7
.end method

.method public static isOwner()Z
    .locals 1

    .prologue
    .line 1200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1206
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 1207
    :cond_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 1210
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    const/4 v2, 0x1

    goto :goto_0

    .line 1213
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    const/4 v1, 0x1

    .line 1231
    :goto_0
    return v1

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isQRCodeDetectionSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1242
    const-string v0, "com.samsung.android.app.qragent"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegularResolution(II)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 1253
    mul-int/lit8 v1, p0, 0x9

    mul-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v0

    .line 1256
    :cond_1
    mul-int/lit8 v1, p0, 0x3

    mul-int/lit8 v2, p1, 0x4

    if-eq v1, v2, :cond_0

    .line 1259
    if-eq p0, p1, :cond_0

    .line 1262
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSEALanguage()Z
    .locals 2

    .prologue
    .line 1323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "fontLanguage":Ljava/lang/String;
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    :cond_0
    const/4 v1, 0x1

    .line 1327
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSLocationManagerSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.slocation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.slocation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSWALanguage()Z
    .locals 2

    .prologue
    .line 1374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, "fontLanguage":Ljava/lang/String;
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    :cond_0
    const/4 v1, 0x1

    .line 1380
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSamsungTalkBackEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1272
    const/4 v1, 0x0

    .line 1274
    .local v1, "talkbackEnabled":Z
    if-nez p0, :cond_0

    .line 1285
    :goto_0
    return v2

    .line 1278
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1282
    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 1285
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1282
    goto :goto_1
.end method

.method public static isScreenReaderActive(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1289
    const/16 v1, 0x3a

    .line 1290
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1291
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.talkback"

    .line 1292
    .local v2, "SAMSUNG_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3a

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1294
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v8

    .line 1297
    :cond_1
    const/4 v6, 0x0

    .line 1298
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1299
    if-nez v6, :cond_2

    .line 1300
    const-string v6, ""

    .line 1303
    :cond_2
    move-object v3, v7

    .line 1305
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1307
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1308
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1309
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1311
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    .line 1312
    const-string v9, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "com.samsung.android.app.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1316
    :cond_5
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isSecureKeyguardLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1332
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1333
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSmartManagerExisted(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1347
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1349
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1350
    const/4 v1, 0x1

    .line 1352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStrongBeautySupportCountry()Z
    .locals 2

    .prologue
    .line 1361
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1362
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HONG KONG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TAIWAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "THAILAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INDONESIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PHILIPPINES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MALAYSIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIETNAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SINGAPORE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MONGOLIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LAOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CAMBODIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRUNEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    :cond_0
    const/4 v1, 0x1

    .line 1370
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportedPreviewSize(Ljava/util/List;II)Z
    .locals 3
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz p0, :cond_1

    .line 920
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 921
    .local v1, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v2, v1, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v2, p2, :cond_0

    .line 922
    const/4 v2, 0x1

    .line 926
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSystemSoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1858
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTalkBackServiceActive(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1385
    if-nez p0, :cond_0

    .line 1401
    :goto_0
    return v2

    .line 1389
    :cond_0
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1390
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    .line 1391
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 1392
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1393
    const/4 v0, 0x0

    move v2, v3

    .line 1394
    goto :goto_0

    .line 1396
    :cond_1
    const/4 v0, 0x0

    .line 1397
    goto :goto_0

    .line 1400
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_2
    const/4 v0, 0x0

    .line 1401
    goto :goto_0
.end method

.method public static isUSAFeature()Z
    .locals 2

    .prologue
    .line 1411
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    const/4 v1, 0x1

    .line 1415
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWFeature()Z
    .locals 2

    .prologue
    .line 1424
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    const/4 v1, 0x1

    .line 1428
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1438
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1439
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mFilePath"    # Ljava/lang/String;
    .param p1, "sampleSize"    # I

    .prologue
    .line 1466
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1468
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1469
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1470
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1471
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1472
    sget-object v2, Lcom/sec/android/app/camera/util/Util;->mDecodingData:[B

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1473
    const/16 v2, 0x1e0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1475
    const/16 v2, 0x168

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1478
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1482
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1445
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1446
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1447
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1448
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 1459
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 1451
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/sec/android/app/camera/util/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1452
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1454
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1455
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1456
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1457
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static makeDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1492
    if-nez p0, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return v1

    .line 1496
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1498
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1501
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static makeMp4Slow(Ljava/lang/String;D)Z
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "slowFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    .line 1510
    const-string v5, "Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeMp4Slow() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v1, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    .local v1, "movieFile":Ljava/io/RandomAccessFile;
    const-string v5, "moov"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1520
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1562
    .end local v1    # "movieFile":Ljava/io/RandomAccessFile;
    :goto_0
    return v4

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "Util"

    const-string v6, "Can\'t open file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1525
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "movieFile":Ljava/io/RandomAccessFile;
    :cond_0
    const-string v5, "mvhd"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1526
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1530
    :cond_1
    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getSlowMotionTimeBytes(Ljava/io/RandomAccessFile;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v5, 0x3

    .line 1531
    .local v3, "preSkipBytes":I
    const/16 v2, 0x50

    .line 1532
    .local v2, "postSkipBytes":I
    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v1, v3, v6, v7, v2}, Lcom/sec/android/app/camera/util/Util;->modifySlowMotionData(Ljava/io/RandomAccessFile;IDI)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1533
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1538
    :cond_2
    const-string v5, "trak"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "tkhd"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1539
    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1542
    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getSlowMotionTimeBytes(Ljava/io/RandomAccessFile;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v5, 0x8

    .line 1543
    const/16 v2, 0x3c

    .line 1544
    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v1, v3, v6, v7, v2}, Lcom/sec/android/app/camera/util/Util;->modifySlowMotionData(Ljava/io/RandomAccessFile;IDI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1545
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1550
    :cond_5
    const-string v5, "mdia"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "mdhd"

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/Util;->findSlowMotionAtom(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1551
    :cond_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1554
    :cond_7
    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getSlowMotionTimeBytes(Ljava/io/RandomAccessFile;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, 0x3

    .line 1555
    const/4 v2, 0x0

    .line 1556
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v1, v3, v6, v7, v2}, Lcom/sec/android/app/camera/util/Util;->modifySlowMotionData(Ljava/io/RandomAccessFile;IDI)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1557
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    .line 1561
    :cond_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1562
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private static modifySlowMotionData(Ljava/io/RandomAccessFile;IDI)Z
    .locals 14
    .param p0, "movieFile"    # Ljava/io/RandomAccessFile;
    .param p1, "preSkipBytes"    # I
    .param p2, "speedFactor"    # D
    .param p4, "postSkipBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "modifyData() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1569
    const/4 v4, 0x4

    .line 1570
    .local v4, "dataSize":I
    const/4 v9, 0x4

    new-array v3, v9, [B

    .line 1571
    .local v3, "dataBuffer":[B
    const/4 v8, 0x0

    .line 1572
    .local v8, "size":I
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    .line 1574
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1575
    const-string v9, "Util"

    const-string v10, "modifySlowMotionData : File is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    const/4 v7, 0x0

    .line 1580
    .local v7, "originalData":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 1581
    aget-byte v9, v3, v5

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x8

    shl-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 1580
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1584
    :cond_1
    int-to-double v10, v7

    mul-double v10, v10, p2

    double-to-int v6, v10

    .line 1585
    .local v6, "newData":I
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "orgData: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "newData: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    sub-long/2addr v10, v12

    invoke-virtual {p0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1590
    const/4 v9, 0x4

    new-array v2, v9, [B

    .line 1591
    .local v2, "byteArray":[B
    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    if-ge v5, v9, :cond_2

    .line 1592
    rsub-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v10, v5, 0x8

    shr-int v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 1591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1595
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1597
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1599
    const/4 v9, 0x1

    return v9
.end method

.method public static refreshDefaultDeviceProperties(Landroid/content/Context;)V
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1604
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1606
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1608
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1611
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_4

    .line 1613
    :cond_3
    sput v5, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_4
    sput v4, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    goto :goto_0
.end method

.method public static renameFile(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)V
    .locals 17
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1621
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1622
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 1625
    :cond_0
    const/4 v10, 0x0

    .line 1626
    .local v10, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_1

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1629
    :cond_1
    if-nez v10, :cond_3

    .line 1630
    const-string v4, "Util"

    const-string v5, "contentresolver is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_2
    :goto_0
    return-void

    .line 1634
    :cond_3
    const/4 v3, 0x0

    .line 1635
    .local v3, "src":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 1638
    .local v2, "dst":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1639
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 1640
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    if-eqz v2, :cond_4

    .line 1643
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1645
    :cond_4
    if-eqz v3, :cond_5

    .line 1646
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1648
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 1650
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1652
    .local v13, "tempName":Ljava/lang/String;
    const-string v4, "Camera/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    const-string v5, ".jpg"

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1654
    .local v14, "titleName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1655
    .local v7, "selection":Ljava/lang/String;
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1657
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 1658
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1659
    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1661
    .local v12, "idIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1662
    .local v15, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v15, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1664
    .end local v12    # "idIndex":I
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1642
    .end local v7    # "selection":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "tempName":Ljava/lang/String;
    .end local v14    # "titleName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object/from16 v16, v4

    if-eqz v2, :cond_7

    .line 1643
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1645
    :cond_7
    if-eqz v3, :cond_8

    .line 1646
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1648
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 1650
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1652
    .restart local v13    # "tempName":Ljava/lang/String;
    const-string v4, "Camera/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    const-string v5, ".jpg"

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1654
    .restart local v14    # "titleName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1655
    .restart local v7    # "selection":Ljava/lang/String;
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1657
    .restart local v11    # "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_a

    .line 1658
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1659
    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1661
    .restart local v12    # "idIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1662
    .restart local v15    # "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v15, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1664
    .end local v12    # "idIndex":I
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1666
    :cond_a
    throw v16
.end method

.method public static restoreRingerMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1880
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1881
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    if-eqz v1, :cond_0

    .line 1882
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1884
    :cond_0
    return-void
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1673
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 1674
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1677
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 1678
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1679
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 1680
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 1681
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1688
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 1690
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1694
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1695
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 1696
    const/4 p0, 0x0

    .line 1697
    move-object p0, v7

    .line 1703
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 1682
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 1683
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1685
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1699
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1711
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 1715
    const/4 v1, 0x0

    .line 1717
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1722
    if-eqz v2, :cond_0

    .line 1724
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1730
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 1722
    if-eqz v1, :cond_1

    .line 1724
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1725
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1722
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 1724
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1727
    :cond_2
    :goto_4
    throw v3

    .line 1725
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1722
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1719
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static setHighAccuracyLocationMode(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1745
    const-string v0, "Util"

    const-string v1, "setHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1747
    return-void
.end method

.method public static setLcdBrightness(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z

    .prologue
    .line 1735
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1736
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    const-string v1, "SSRM_STATUS_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1739
    const-string v1, "PackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1741
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1742
    return-void
.end method

.method public static showHelpHub(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1750
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->getHelpVersion(Landroid/content/Context;)I

    move-result v2

    .line 1751
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1757
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->HELPHUB_REQUEST_SECTION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1765
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1767
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1768
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1771
    :catch_1
    move-exception v0

    .line 1772
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static silenceRingerMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1888
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1889
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    .line 1890
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    if-eqz v1, :cond_0

    .line 1891
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1893
    :cond_0
    return-void
.end method

.method public static transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "screenOrientation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 1792
    packed-switch p1, :pswitch_data_0

    .line 1805
    :goto_0
    :pswitch_0
    return-void

    .line 1794
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1797
    :pswitch_2
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1800
    :pswitch_3
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
