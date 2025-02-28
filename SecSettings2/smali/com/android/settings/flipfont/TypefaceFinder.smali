.class public Lcom/android/settings_ex/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 173
    return-void
.end method

.method private findTypefacesWithCR(Ljava/lang/String;)Z
    .locals 11
    .param p1, "fontPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/fonts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 81
    .local v4, "uriFonts":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 82
    .local v7, "xmlfiles":[Ljava/lang/String;
    const-string v6, ""

    .line 85
    .local v6, "xmlFilesString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 87
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 88
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 94
    :cond_0
    if-eqz v7, :cond_1

    array-length v9, v7

    if-nez v9, :cond_2

    .line 111
    .end local v4    # "uriFonts":Landroid/net/Uri;
    .end local v6    # "xmlFilesString":Ljava/lang/String;
    .end local v7    # "xmlfiles":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "uriFonts":Landroid/net/Uri;
    .restart local v6    # "xmlFilesString":Ljava/lang/String;
    .restart local v7    # "xmlfiles":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 91
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/xml/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 103
    .local v5, "uriXML":Landroid/net/Uri;
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    .local v2, "in":Ljava/io/InputStream;
    aget-object v8, v7, v3

    invoke-virtual {p0, v8, v2, p1}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v5    # "uriXML":Landroid/net/Uri;
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 106
    .restart local v5    # "uriXML":Landroid/net/Uri;
    :catch_2
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings_ex/flipfont/Typeface;
    .locals 3
    .param p1, "typefaceFilename"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "typeface":Lcom/android/settings_ex/flipfont/Typeface;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "typeface":Lcom/android/settings_ex/flipfont/Typeface;
    check-cast v1, Lcom/android/settings_ex/flipfont/Typeface;

    .line 295
    .restart local v1    # "typeface":Lcom/android/settings_ex/flipfont/Typeface;
    invoke-virtual {v1}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    return-object v1

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 7
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fontPackageName"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 122
    .local v3, "xmlfiles":[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    array-length v4, v3

    if-nez v4, :cond_0

    .line 129
    invoke-direct {p0, p2}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->findTypefacesWithCR(Ljava/lang/String;)Z

    move-result v4

    .line 148
    :goto_0
    return v4

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 137
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 138
    .local v2, "in":Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 142
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v4, "TypefaceFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not possible to open, continue to next file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 17
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "entries"    # Ljava/util/Vector;
    .param p3, "entryValues"    # Ljava/util/Vector;
    .param p4, "fontPackageName"    # Ljava/util/Vector;

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e114a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v14, "default"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v14, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v15, Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v15}, Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;-><init>()V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "s":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 198
    .local v1, "aManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "fontName":Ljava/lang/String;
    const/16 v14, 0x2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 200
    .local v13, "start_pos":I
    const/16 v14, 0x2e

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 202
    .local v4, "end_pos":I
    if-gez v4, :cond_0

    .line 203
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 206
    :cond_0
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "loadTypeface":Ljava/lang/String;
    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "packageName":Ljava/lang/String;
    const/16 v14, 0x80

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 213
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v14, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 215
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 216
    .local v5, "fontAssetManager":Landroid/content/res/AssetManager;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fonts/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 221
    .local v9, "newTypeface":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 192
    .end local v1    # "aManager":Landroid/content/res/AssetManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "end_pos":I
    .end local v5    # "fontAssetManager":Landroid/content/res/AssetManager;
    .end local v6    # "fontName":Ljava/lang/String;
    .end local v8    # "loadTypeface":Ljava/lang/String;
    .end local v9    # "newTypeface":Landroid/graphics/Typeface;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v13    # "start_pos":I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 226
    .restart local v1    # "aManager":Landroid/content/res/AssetManager;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "end_pos":I
    .restart local v5    # "fontAssetManager":Landroid/content/res/AssetManager;
    .restart local v6    # "fontName":Ljava/lang/String;
    .restart local v8    # "loadTypeface":Ljava/lang/String;
    .restart local v9    # "newTypeface":Landroid/graphics/Typeface;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v13    # "start_pos":I
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.monotype.android.font.cooljazz"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 233
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "fontAssetManager":Landroid/content/res/AssetManager;
    .end local v9    # "newTypeface":Landroid/graphics/Typeface;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".ttf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v1    # "aManager":Landroid/content/res/AssetManager;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "end_pos":I
    .end local v6    # "fontName":Ljava/lang/String;
    .end local v8    # "loadTypeface":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "start_pos":I
    :cond_4
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .param p1, "xmlFilename"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .param p3, "fontPackageName"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 157
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 158
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 159
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/android/settings_ex/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/settings_ex/flipfont/TypefaceParser;-><init>()V

    .line 160
    .local v1, "fontParser":Lcom/android/settings_ex/flipfont/TypefaceParser;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 161
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 162
    invoke-virtual {v1}, Lcom/android/settings_ex/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings_ex/flipfont/Typeface;

    move-result-object v2

    .line 163
    .local v2, "newTypeface":Lcom/android/settings_ex/flipfont/Typeface;
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, p3}, Lcom/android/settings_ex/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "fontParser":Lcom/android/settings_ex/flipfont/TypefaceParser;
    .end local v2    # "newTypeface":Lcom/android/settings_ex/flipfont/Typeface;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "TypefaceFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File parsing is not possible, omit this typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
