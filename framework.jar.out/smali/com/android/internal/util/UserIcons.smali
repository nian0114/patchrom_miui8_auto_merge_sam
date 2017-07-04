.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field private static final TAG_FOTA:Ljava/lang/String; = "fota"

.field private static final USER_DRAWABLES:[I

.field private static final USER_ICON_COLORS:[I

.field static mFotaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    return-void

    .line 47
    :array_0
    .array-data 4
        0x106005b
        0x106005c
        0x106005d
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x10800f2
        0x10800f3
        0x10800f4
        0x10800f5
        0x10800f6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 72
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 73
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "userId"    # I
    .param p1, "light"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x2710

    const/4 v5, 0x0

    .line 118
    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 119
    invoke-static {}, Lcom/android/internal/util/UserIcons;->readFotaLocked()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    .line 121
    :cond_0
    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 122
    const-string v2, "LL"

    sput-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    .line 125
    :cond_1
    const-string v2, "UserIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultUserIcon , userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFotaVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    const-string v3, "KK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    if-eq p0, v6, :cond_2

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    sget-object v4, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int v4, p0, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    :goto_0
    return-object v1

    .line 134
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10800f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 141
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz p1, :cond_4

    const v0, 0x1060064

    .line 142
    .local v0, "colorResId":I
    :goto_1
    if-eq p0, v6, :cond_5

    .line 144
    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    .line 149
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c6

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 141
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v0, 0x1060063

    goto :goto_1

    .line 147
    .restart local v0    # "colorResId":I
    :cond_5
    const v0, 0x106005e

    goto :goto_2
.end method

.method public static getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "userId"    # I
    .param p1, "light"    # Z
    .param p2, "isPrimary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v2, "UserIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultUserIconForBMode , userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPrimary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_0

    const v0, 0x1060064

    .line 91
    .local v0, "colorResId":I
    :goto_0
    const/16 v2, -0x2710

    if-eq p0, v2, :cond_1

    .line 93
    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    .line 98
    :goto_1
    const/4 v1, 0x0

    .line 99
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    return-object v1

    .line 90
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x1060063

    goto :goto_0

    .line 96
    .restart local v0    # "colorResId":I
    :cond_1
    const v0, 0x106005e

    goto :goto_1

    .line 103
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method

.method private static readFotaLocked()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 157
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/users"

    const-string v10, "fota.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v5, "mIsFotaFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 159
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v1, v5}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 160
    .local v1, "fotaFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v3, 0x0

    .line 162
    .local v3, "mFotaVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 164
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v11, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 171
    :cond_1
    if-eq v8, v11, :cond_3

    .line 172
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 173
    const-string v9, "LL"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_2

    .line 188
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_0
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .local v4, "mFotaVersion":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 176
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_3
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "fota"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 177
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 186
    :cond_4
    if-eqz v0, :cond_5

    .line 188
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_2
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_1

    .line 179
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v0, :cond_6

    .line 188
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_3
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 183
    .local v7, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 184
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    if-eqz v0, :cond_7

    .line 188
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_4
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_1

    .line 186
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_8

    .line 188
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_8
    :goto_5
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :catch_2
    move-exception v9

    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_2

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v9

    goto :goto_4

    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v9

    goto :goto_5
.end method
