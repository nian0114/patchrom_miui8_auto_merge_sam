.class public Landroid/content/pm/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private misAppSystem:Z

.field private misDeviceMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 48
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 53
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    return-void
.end method

.method private AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 475
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 476
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :try_start_1
    const-string v5, "PACKAGE"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 483
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 489
    const-string v5, "SERIALNUMBER"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 493
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    if-eqz v3, :cond_0

    .line 512
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pass all with devtoken :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v4, 0x1

    .line 517
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .line 499
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 505
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 507
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private AASA_verifyDevice(Ljava/lang/String;)Z
    .locals 8
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 528
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 529
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    const-string v5, "DEVIEID"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 536
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AASA_verifyDevice OK with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v4, 0x1

    .line 564
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .line 542
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 548
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static SHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 96
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 97
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 98
    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 88
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 89
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 90
    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 121
    const-string v3, ""

    .line 130
    :goto_0
    return-object v3

    .line 123
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 125
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 127
    .local v1, "current":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 130
    .end local v1    # "current":Ljava/lang/Byte;
    :cond_1
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkHash(Ljava/lang/String;)Z
    .locals 22
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v11, 0x0

    .line 369
    .local v11, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 370
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v12, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v12, :cond_9

    .line 373
    :try_start_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 374
    .local v14, "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 375
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 377
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 378
    .local v7, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v3, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string v19, "META-INF/"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 383
    const-string/jumbo v19, "token"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "Token.xml"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 386
    :cond_1
    invoke-static {v12, v7, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;

    .line 387
    invoke-virtual {v14, v13, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 450
    .end local v3    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :catch_0
    move-exception v10

    move-object v11, v12

    .line 452
    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v10, "m":Ljava/io/IOException;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_1
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v19, 0x0

    .line 455
    .end local v10    # "m":Ljava/io/IOException;
    :goto_2
    return v19

    .line 391
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_2
    if-eqz v12, :cond_3

    .line 392
    :try_start_2
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 395
    :cond_3
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 396
    .local v16, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 397
    .local v17, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v15, "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 399
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 400
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 401
    .local v18, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "iii":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 402
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 405
    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_5
    const-string v2, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 407
    .local v2, "HASH":Ljava/lang/String;
    :try_start_3
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 416
    :try_start_4
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ascending hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 419
    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 409
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v4

    .line 411
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 413
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 422
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 423
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 424
    .local v9, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 425
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 426
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 427
    .restart local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .restart local v6    # "iii":I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 429
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 434
    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_8
    :try_start_5
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    .line 442
    :try_start_6
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " insertion hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 445
    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 436
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_2
    move-exception v4

    .line 438
    .restart local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 440
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 455
    .end local v2    # "HASH":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v15    # "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v16    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v17    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_9
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 450
    :catch_3
    move-exception v10

    goto/16 :goto_1
.end method

.method private checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 995
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 997
    :cond_0
    const-string v8, "AASATokenParser"

    const-string v9, "ERROR: checkTokenTarget input is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 1103
    :cond_1
    :goto_0
    return v2

    .line 1000
    :cond_2
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, "rule_model":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "rule_carrier":[Ljava/lang/String;
    const-string/jumbo v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, "target_model":Ljava/lang/String;
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1006
    .local v5, "target_carrier":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1008
    .local v2, "result":Z
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1009
    array-length v8, v4

    if-ne v8, v10, :cond_7

    .line 1010
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1011
    array-length v7, v3

    if-ne v7, v10, :cond_3

    .line 1012
    const/4 v2, 0x1

    goto :goto_0

    .line 1014
    :cond_3
    const/4 v2, 0x1

    .line 1015
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1016
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1017
    const/4 v2, 0x0

    .line 1018
    goto :goto_0

    .line 1015
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1022
    .end local v0    # "i":I
    :cond_5
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1023
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1024
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1025
    const/4 v2, 0x1

    .line 1026
    goto :goto_0

    .line 1023
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1031
    .end local v0    # "i":I
    :cond_7
    const/4 v2, 0x1

    .line 1034
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_8

    .line 1035
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1036
    const/4 v2, 0x0

    .line 1041
    :cond_8
    if-ne v2, v10, :cond_1

    .line 1042
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1043
    array-length v7, v3

    if-ne v7, v10, :cond_a

    .line 1044
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1034
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1046
    :cond_a
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1047
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1048
    const/4 v2, 0x0

    .line 1049
    goto/16 :goto_0

    .line 1046
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1053
    :cond_c
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1054
    const/4 v2, 0x0

    .line 1055
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 1056
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1057
    const/4 v2, 0x1

    .line 1058
    goto/16 :goto_0

    .line 1055
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1064
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_e
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1067
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v8, v4

    if-ge v0, v8, :cond_f

    .line 1068
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1069
    const/4 v2, 0x1

    .line 1074
    :cond_f
    if-ne v2, v10, :cond_1

    .line 1075
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1076
    array-length v7, v3

    if-ne v7, v10, :cond_12

    .line 1077
    const/4 v2, 0x0

    .line 1078
    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 1079
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1080
    const/4 v2, 0x1

    .line 1081
    goto/16 :goto_0

    .line 1067
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1078
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1085
    :cond_12
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1086
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1087
    const/4 v2, 0x0

    .line 1088
    goto/16 :goto_0

    .line 1085
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1092
    :cond_14
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1093
    const/4 v2, 0x0

    .line 1094
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 1095
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1096
    const/4 v2, 0x1

    .line 1097
    goto/16 :goto_0

    .line 1094
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 105
    .local v1, "b":B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .line 106
    .local v3, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .line 109
    .end local v6    # "two_halfs":I
    .local v7, "two_halfs":I
    :goto_1
    if-ltz v3, :cond_0

    const/16 v8, 0x9

    if-gt v3, v8, :cond_0

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    and-int/lit8 v3, v1, 0xf

    .line 112
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_0
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_2

    .line 114
    .end local v1    # "b":B
    .end local v3    # "halfbyte":I
    .end local v7    # "two_halfs":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v1    # "b":B
    .restart local v3    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_2
    move v7, v6

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    goto :goto_1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    .prologue
    .local p2, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, "size":I
    const/16 v6, 0x400

    new-array v3, v6, [B

    .line 159
    .local v3, "localBuf":[B
    if-eqz v2, :cond_2

    .line 160
    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 161
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 162
    aget-byte v6, v3, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "ii":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 166
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 186
    .end local v3    # "localBuf":[B
    .end local v4    # "size":I
    :cond_3
    :goto_1
    return-object v5

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No IO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v2, :cond_3

    .line 172
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v6

    goto :goto_1

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No RUN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v2, :cond_3

    .line 181
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 182
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1

    .line 195
    :cond_0
    const/4 v3, 0x0

    array-length v4, p3

    invoke-virtual {v1, p3, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 199
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 219
    :cond_2
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v1, :cond_2

    .line 205
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v3

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v1, :cond_2

    .line 214
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 215
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "arrayValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 224
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 225
    .local v2, "eventType":I
    const/4 v1, 0x0

    .line 226
    .local v1, "depth":I
    :goto_0
    if-eq v2, v4, :cond_1

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "name":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 256
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 257
    goto :goto_0

    .line 232
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 237
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 239
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 246
    .end local v0    # "a":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 247
    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    const/4 v2, 0x1

    goto :goto_1

    .line 259
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    return v4

    .line 229
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toChars([B)[C
    .locals 10
    .param p0, "mSignature"    # [B

    .prologue
    const/16 v9, 0xa

    .line 135
    move-object v4, p0

    .line 136
    .local v4, "sig":[B
    array-length v0, v4

    .line 137
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 138
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 140
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 142
    aget-byte v6, v4, v3

    .line 143
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 144
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 145
    and-int/lit8 v2, v6, 0xf

    .line 146
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 146
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 149
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    return-object v5
.end method


# virtual methods
.method public AASA_IsToken(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v6, 0x0

    .line 329
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 332
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    .line 335
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 336
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 339
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 343
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    const/4 v6, 0x1

    .line 357
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_4

    .line 358
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .line 361
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_0
    return v6

    .line 351
    :catch_0
    move-exception v2

    .line 353
    .local v2, "m":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR: AASA_IsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    if-eqz v3, :cond_2

    .line 358
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 357
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_3

    .line 358
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v7

    .line 357
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .line 351
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_1

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_4
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_0
.end method

.method public AASA_VerifyFile([B)[B
    .locals 1
    .param p1, "contents"    # [B

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    .line 461
    .local v0, "mj":[B
    if-eqz v0, :cond_0

    .line 465
    .end local v0    # "mj":[B
    :goto_0
    return-object v0

    .restart local v0    # "mj":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    const-string v25, "AASATokenParser"

    const-string v26, " AASA_VerifyToken START"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v13, 0x0

    .line 629
    .local v13, "mTokenFile":Ljava/util/jar/JarFile;
    const/4 v12, 0x0

    .line 630
    .local v12, "mTokenEntry":Ljava/util/jar/JarEntry;
    const/4 v4, 0x0

    .line 633
    .local v4, "certs":[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v14, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v14, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v14, :cond_0

    .line 636
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v12

    .line 637
    if-eqz v12, :cond_0

    .line 639
    invoke-virtual {v12}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 640
    .local v20, "signedData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v12, v1}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 652
    .end local v20    # "signedData":[B
    :cond_0
    if-eqz v14, :cond_1c

    .line 653
    invoke-virtual {v14}, Ljava/util/jar/JarFile;->close()V

    move-object v13, v14

    .line 659
    .end local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    if-nez v4, :cond_4

    .line 661
    :cond_2
    const-string v25, "AASATokenParser"

    const-string v26, " ERROR: plz check certification in the device"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v25, 0x0

    .line 890
    :goto_1
    return v25

    .line 646
    :catch_0
    move-exception v11

    .line 648
    .local v11, "m":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    if-eqz v13, :cond_1

    .line 653
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 652
    .end local v11    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v25

    :goto_3
    if-eqz v13, :cond_3

    .line 653
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v25

    .line 665
    :cond_4
    const/4 v13, 0x0

    .line 666
    const/4 v12, 0x0

    .line 670
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v19

    .line 671
    .local v19, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 672
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 673
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 676
    .local v23, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_4
    const-string v25, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 678
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v19

    .line 679
    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 680
    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 686
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 687
    .local v15, "mode":Ljava/lang/String;
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 689
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 683
    .end local v15    # "mode":Ljava/lang/String;
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 691
    .restart local v15    # "mode":Ljava/lang/String;
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 693
    .local v24, "which":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 695
    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 696
    const-string v25, "AASATokenParser"

    const-string v26, " Ship mode device does not support MODE 255"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 700
    :cond_7
    const/4 v8, 0x0

    .line 701
    .local v8, "isCheckUID":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v5, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sparse-switch v24, :sswitch_data_0

    .line 748
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 707
    :sswitch_0
    const-string v25, "PACKAGE"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v25, "CERT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    const-string v25, "DIGEST"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_8
    const-string v25, "MODELS"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v25, "CARRIERS"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :goto_4
    :sswitch_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 752
    const/4 v7, 0x0

    .local v7, "ii":I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_b

    .line 754
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 756
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v19

    .line 757
    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 758
    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 752
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 714
    .end local v7    # "ii":I
    :sswitch_2
    const-string v25, "PACKAGE"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v25, "CERT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 876
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "isCheckUID":Z
    .end local v15    # "mode":Ljava/lang/String;
    .end local v24    # "which":I
    :catch_1
    move-exception v6

    .line 879
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    .line 881
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 718
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "isCheckUID":Z
    .restart local v15    # "mode":Ljava/lang/String;
    .restart local v24    # "which":I
    :sswitch_3
    :try_start_6
    const-string v25, "CERT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 885
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "isCheckUID":Z
    .end local v15    # "mode":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v23    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "which":I
    :catch_2
    move-exception v6

    .line 887
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 721
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "isCheckUID":Z
    .restart local v15    # "mode":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v23    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "which":I
    :sswitch_4
    :try_start_7
    const-string v25, "UUID"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 725
    :sswitch_5
    const-string v25, "PACKAGE"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 729
    :sswitch_6
    const-string v25, "UUID"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    const-string v25, "ACCOUNT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 733
    :sswitch_7
    const-string v25, "PACKAGE"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    const-string v25, "CERT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 737
    :sswitch_8
    const-string v25, "PACKAGE"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const-string v25, "CERT"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    const-string v25, "DIGEST"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_9
    const-string v25, "MODELS"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v25, "CARRIERS"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 762
    .restart local v7    # "ii":I
    :cond_a
    const-string v25, "AASATokenParser"

    const-string v26, " Token does not have value"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 768
    :cond_b
    const/16 v21, 0x0

    .line 769
    .local v21, "success_check_count":I
    const/4 v9, 0x0

    .line 770
    .local v9, "isModelChecked":Z
    const/16 v17, 0x0

    .line 771
    .local v17, "mymodel":Ljava/lang/String;
    const/16 v16, 0x0

    .line 772
    .local v16, "mycarrier":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_16

    .line 774
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "PACKAGE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 776
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 778
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "OK:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    add-int/lit8 v21, v21, 0x1

    .line 772
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 783
    :cond_d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "CERT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 785
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_c

    .line 787
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    new-instance v26, Ljava/lang/String;

    aget-object v27, v4, v10

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/content/pm/AASATokenParser;->toChars([B)[C

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 789
    add-int/lit8 v21, v21, 0x1

    .line 790
    const-string v25, "AASATokenParser"

    const-string v26, "OK:CERT"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 795
    .end local v10    # "j":I
    :cond_f
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "UUID"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 797
    const-string v25, "AASATokenParser"

    const-string v26, "OK:UUID"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-eqz p2, :cond_c

    .line 800
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 802
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 806
    :cond_10
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "ACCOUNT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 808
    const-string v25, "AASATokenParser"

    const-string v26, "OK:ACCOUNT"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 811
    :cond_11
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "DIGEST"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 813
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/AASATokenParser;->checkHash(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 815
    const-string v25, "AASATokenParser"

    const-string v26, "OK:HASH"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 818
    :cond_12
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "MODELS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 820
    if-nez v9, :cond_13

    .line 822
    const/4 v9, 0x1

    .line 823
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "mymodel":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "mymodel":Ljava/lang/String;
    goto/16 :goto_7

    .line 826
    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "mymodel":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 827
    .restart local v17    # "mymodel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 829
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 833
    :cond_14
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "CARRIERS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 835
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v9, v0, :cond_15

    .line 836
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "mycarrier":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 837
    .restart local v16    # "mycarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 839
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 844
    :cond_15
    const/4 v9, 0x1

    .line 845
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "mycarrier":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .restart local v16    # "mycarrier":Ljava/lang/String;
    goto/16 :goto_7

    .line 850
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 851
    if-nez v8, :cond_17

    .line 852
    const-string v25, "AASATokenParser"

    const-string v26, " Pass ALL"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 856
    :cond_17
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v22, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v25, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 859
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v19

    .line 860
    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 861
    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 863
    :cond_18
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-nez v25, :cond_19

    const/16 v25, 0x0

    goto/16 :goto_1

    .line 865
    :cond_19
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 866
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " PASS ALL with S/N:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 869
    :cond_1a
    const-string v25, "AASATokenParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " FAIL only S/N:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    .line 870
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 890
    .end local v22    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 652
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "ii":I
    .end local v8    # "isCheckUID":Z
    .end local v9    # "isModelChecked":Z
    .end local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v15    # "mode":Ljava/lang/String;
    .end local v16    # "mycarrier":Ljava/lang/String;
    .end local v17    # "mymodel":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v21    # "success_check_count":I
    .end local v23    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "which":I
    .restart local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v25

    move-object v13, v14

    .end local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .line 646
    .end local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_3
    move-exception v11

    move-object v13, v14

    .end local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_1c
    move-object v13, v14

    .end local v14    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v13    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public AASA_getTokenContent()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 898
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 901
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 902
    .local v5, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 903
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 906
    :try_start_1
    const-string v7, "PACKAGE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 907
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 908
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 909
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 913
    const-string v7, "DATE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 915
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 916
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 917
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 921
    const-string v7, "VERSION"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 923
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 924
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 925
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 948
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v2, "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "SharedAllowPM"

    invoke-direct {p0, v4, v7, v2}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 951
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 952
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 953
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 955
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v3, "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "PERMISSION"

    invoke-direct {p0, v4, v7, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 960
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 961
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 962
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 965
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 990
    .end local v2    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_1
    return v6

    .line 927
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 930
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 931
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 985
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 987
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 967
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    :try_start_3
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 970
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 971
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 974
    .end local v1    # "ii":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 975
    const/4 v1, 0x0

    .restart local v1    # "ii":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 976
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 990
    .end local v1    # "ii":I
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method public aasaDevToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v8, 0x0

    .line 570
    .local v8, "result":Z
    const/4 v5, 0x0

    .line 571
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 573
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 574
    const/4 v9, 0x0

    .line 620
    :goto_0
    return v9

    .line 576
    :cond_0
    const/4 v6, 0x0

    .line 577
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 579
    .local v2, "count":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    move-object v6, v7

    .line 589
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_1

    .line 590
    new-array v0, v2, [B

    .line 592
    .local v0, "buffer":[B
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 593
    invoke-virtual {p0, v0}, Landroid/content/pm/AASATokenParser;->AASA_VerifyFile([B)[B

    move-result-object v1

    .line 594
    .local v1, "contents":[B
    if-eqz v1, :cond_1

    .line 595
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    iput-object v9, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 596
    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0, p3, p2}, Landroid/content/pm/AASATokenParser;->AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 598
    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage: ok: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 599
    const/4 v8, 0x1

    .line 611
    .end local v0    # "buffer":[B
    .end local v1    # "contents":[B
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 612
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v2    # "count":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_3
    move v9, v8

    .line 620
    goto :goto_0

    .line 582
    .restart local v2    # "count":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v2, 0x0

    .line 587
    goto :goto_1

    .line 585
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 586
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v2, 0x0

    goto :goto_1

    .line 602
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "contents":[B
    :cond_3
    :try_start_4
    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not DevTargert"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 606
    .end local v1    # "contents":[B
    :catch_2
    move-exception v9

    goto :goto_2

    .line 615
    .end local v0    # "buffer":[B
    :catch_3
    move-exception v3

    .line 617
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 585
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 582
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method checkIntegrity([B)[B
    .locals 14
    .param p1, "contents"    # [B

    .prologue
    .line 266
    array-length v11, p1

    const/16 v12, 0x100

    if-ge v11, v12, :cond_0

    .line 267
    const/4 v11, 0x0

    .line 322
    :goto_0
    return-object v11

    .line 271
    :cond_0
    const/16 v11, 0x100

    :try_start_0
    new-array v7, v11, [B

    .line 273
    .local v7, "signData":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x100

    invoke-static {p1, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 274
    const/4 v11, 0x7

    new-array v10, v11, [B

    .line 276
    .local v10, "tempBuf":[B
    const/4 v6, 0x0

    .line 277
    .local v6, "numberIndex":I
    const/4 v4, 0x0

    .line 279
    .local v4, "isError":Z
    const/16 v3, 0x100

    .local v3, "ii":I
    :goto_1
    aget-byte v11, p1, v3

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_1

    .line 281
    const/4 v11, 0x7

    if-lt v6, v11, :cond_2

    .line 284
    const/4 v4, 0x1

    .line 290
    :cond_1
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 291
    const/4 v11, 0x0

    goto :goto_0

    .line 287
    :cond_2
    aget-byte v11, p1, v3

    aput-byte v11, v10, v6

    .line 279
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 293
    :cond_3
    new-array v5, v6, [B

    .line 294
    .local v5, "number":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 295
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 296
    .local v9, "sizeOfcontents":I
    new-array v11, v9, [B

    iput-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 297
    add-int/lit16 v11, v6, 0x100

    const-string v12, ","

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const/4 v13, 0x0

    invoke-static {p1, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "certificate":Ljava/io/InputStream;
    const-string v11, "SHA256WithRSAEncryption"

    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 300
    .local v8, "signature":Ljava/security/Signature;
    const-string/jumbo v11, "x.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 301
    .local v0, "certfactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "certificate":Ljava/io/InputStream;
    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v1    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 304
    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12, v9}, Ljava/security/Signature;->update([BII)V

    .line 305
    invoke-virtual {v8, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 307
    const-string v11, "AASATokenParser"

    const-string v12, "Token is verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    goto/16 :goto_0

    .line 312
    :cond_4
    const-string v11, "AASATokenParser"

    const-string v12, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 316
    .end local v0    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "certificate":Ljava/io/InputStream;
    .end local v3    # "ii":I
    .end local v4    # "isError":Z
    .end local v5    # "number":[B
    .end local v6    # "numberIndex":I
    .end local v7    # "signData":[B
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sizeOfcontents":I
    .end local v10    # "tempBuf":[B
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "AASATokenParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: checkIntegrity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 2
    .param p1, "isDeviceMode"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 58
    iget-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    const-string v0, "/system/etc/aasa_real_crt.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "/data/aasa_test_crt.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0
    .param p1, "isAppSystem"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    .line 67
    return-void
.end method
