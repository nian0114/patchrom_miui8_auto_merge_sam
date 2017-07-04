.class Lmf/javax/xml/xpath/XPathFactoryFinder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;
    }
.end annotation


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static volatile firstTime:Z

.field private static ss:Lmf/javax/xml/xpath/SecuritySupport;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v1, Lmf/javax/xml/xpath/SecuritySupport;

    invoke-direct {v1}, Lmf/javax/xml/xpath/SecuritySupport;-><init>()V

    sput-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    .line 73
    sput-boolean v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 77
    :try_start_0
    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    const-string/jumbo v4, "jaxp.debug"

    invoke-virtual {v1, v4}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, "_":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 91
    sput-boolean v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 536
    const-class v1, Lmf/javax/xml/xpath/XPathFactory;

    sput-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "META-INF/services/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void

    .end local v0    # "_":Ljava/lang/Exception;
    :cond_0
    move v1, v3

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .restart local v0    # "_":Ljava/lang/Exception;
    sput-boolean v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 122
    sget-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    .line 125
    :cond_0
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "propertyName":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Looking up system property \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 183
    sget-object v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v14, v8}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "r":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 185
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The value is \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 186
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v13

    .line 187
    .local v13, "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    if-eqz v13, :cond_2

    .line 258
    .end local v9    # "r":Ljava/lang/String;
    .end local v13    # "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :cond_0
    :goto_0
    return-object v13

    .line 189
    .restart local v9    # "r":Ljava/lang/String;
    :cond_1
    const-string v14, "The property is undefined."

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v9    # "r":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    const-string/jumbo v15, "java.home"

    invoke-virtual {v14, v15}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "javah":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 199
    const-string/jumbo v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 198
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "configFile":Ljava/lang/String;
    const/4 v6, 0x0

    .line 205
    .local v6, "factoryClassName":Ljava/lang/String;
    :try_start_1
    sget-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v14, :cond_4

    .line 206
    sget-object v15, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :try_start_2
    sget-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v14, :cond_3

    .line 208
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v5, "f":Ljava/io/File;
    const/4 v14, 0x0

    sput-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 210
    sget-object v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v14, v5}, Lmf/javax/xml/xpath/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 211
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Read properties file "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 212
    sget-object v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v16, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lmf/javax/xml/xpath/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 206
    .end local v5    # "f":Ljava/io/File;
    :cond_3
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :cond_4
    :try_start_3
    sget-object v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v14, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "found "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in $java.home/jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 220
    if-eqz v6, :cond_5

    .line 221
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    .line 222
    .restart local v13    # "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    if-nez v13, :cond_0

    .line 233
    .end local v13    # "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 234
    .local v11, "sitr":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 252
    const-string/jumbo v14, "http://java.sun.com/jaxp/xpath/dom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 253
    const-string v14, "attempting to use the platform default W3C DOM XPath lib"

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 254
    const-string v14, "com.sun.org.apache.xpath.internal.jaxp.XPathFactoryImpl"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v13

    goto/16 :goto_0

    .line 190
    .end local v2    # "configFile":Ljava/lang/String;
    .end local v6    # "factoryClassName":Ljava/lang/String;
    .end local v7    # "javah":Ljava/lang/String;
    .end local v11    # "sitr":Ljava/util/Iterator;
    :catch_0
    move-exception v12

    .line 191
    .local v12, "t":Ljava/lang/Throwable;
    sget-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v14, :cond_2

    .line 192
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "failed to look up system property \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v2    # "configFile":Ljava/lang/String;
    .restart local v6    # "factoryClassName":Ljava/lang/String;
    .restart local v7    # "javah":Ljava/lang/String;
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 226
    :catch_1
    move-exception v4

    .line 227
    .local v4, "ex":Ljava/lang/Exception;
    sget-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v14, :cond_5

    .line 228
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 235
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v11    # "sitr":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URL;

    .line 236
    .local v10, "resource":Ljava/net/URL;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "looking into "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 238
    :try_start_6
    invoke-virtual {v10}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v14

    .line 239
    sget-object v15, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v15, v10}, Lmf/javax/xml/xpath/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v15

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lmf/javax/xml/xpath/XPathFactoryFinder;->loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v13

    .line 240
    .restart local v13    # "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    if-eqz v13, :cond_6

    goto/16 :goto_0

    .line 243
    .end local v13    # "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :catch_2
    move-exception v3

    .line 244
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v14, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v14, :cond_6

    .line 245
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "failed to read "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 257
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "resource":Ljava/net/URL;
    :cond_8
    const-string v14, "all things were tried, but none was found. bailing out."

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 258
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$0()Lmf/javax/xml/xpath/SecuritySupport;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method private createClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 271
    :try_start_0
    iget-object v2, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 274
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 276
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    sget-boolean v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createServiceFileIterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 498
    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Lmf/javax/xml/xpath/XPathFactoryFinder$1;

    invoke-direct {v1, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder$1;-><init>(Lmf/javax/xml/xpath/XPathFactoryFinder;)V

    .line 531
    :goto_0
    return-object v1

    .line 509
    :cond_0
    :try_start_0
    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    iget-object v2, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmf/javax/xml/xpath/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 510
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 515
    :cond_1
    new-instance v1, Lmf/javax/xml/xpath/XPathFactoryFinder$2;

    invoke-direct {v1, p0, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder$2;-><init>(Lmf/javax/xml/xpath/XPathFactoryFinder;Ljava/util/Enumeration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v0    # "e":Ljava/util/Enumeration;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to enumerate resources "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 530
    sget-boolean v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 531
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using thread context class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 137
    :cond_0
    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using system class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method private loadFromProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 481
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, p3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 482
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 483
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "factoryClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v2

    .line 489
    :goto_0
    return-object v2

    .line 488
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not in the property file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 16
    .param p1, "objectModel"    # Ljava/lang/String;
    .param p2, "inputName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v13, 0x0

    .line 383
    .local v13, "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-string v15, ""

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v11, v14

    .line 384
    .local v11, "stringClassArray":[Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v10, v14

    .line 385
    .local v10, "objectModelObjectArray":[Ljava/lang/Object;
    const-string/jumbo v8, "isObjectModelSupported"

    .line 387
    .local v8, "isObjectModelSupportedMethod":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Reading "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 390
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    .local v4, "configFile":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 392
    .local v9, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 448
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 451
    return-object v13

    .line 394
    :cond_2
    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 395
    .local v3, "comment":I
    packed-switch v3, :pswitch_data_0

    .line 398
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 402
    :goto_1
    :pswitch_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 405
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 411
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    check-cast v13, Lmf/javax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    .restart local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :try_start_1
    const-string/jumbo v14, "isObjectModelSupported"

    invoke-virtual {v2, v14, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 432
    .local v7, "isObjectModelSupported":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v13, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 433
    .local v12, "supported":Ljava/lang/Boolean;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v14

    if-nez v14, :cond_1

    .line 444
    .end local v7    # "isObjectModelSupported":Ljava/lang/reflect/Method;
    .end local v12    # "supported":Ljava/lang/Boolean;
    :goto_2
    const/4 v13, 0x0

    goto :goto_0

    .line 397
    .end local v2    # "clazz":Ljava/lang/Class;
    :pswitch_1
    const-string v9, ""

    goto :goto_1

    .line 418
    .end local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    .restart local v2    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "classCastExcpetion":Ljava/lang/ClassCastException;
    const/4 v13, 0x0

    .line 420
    .restart local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    goto :goto_0

    .line 421
    .end local v1    # "classCastExcpetion":Ljava/lang/ClassCastException;
    .end local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :catch_1
    move-exception v6

    .line 422
    .local v6, "instantiationException":Ljava/lang/InstantiationException;
    const/4 v13, 0x0

    .line 423
    .restart local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    goto :goto_0

    .line 424
    .end local v6    # "instantiationException":Ljava/lang/InstantiationException;
    .end local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    :catch_2
    move-exception v5

    .line 425
    .local v5, "illegalAccessException":Ljava/lang/IllegalAccessException;
    const/4 v13, 0x0

    .line 426
    .restart local v13    # "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    goto :goto_0

    .line 441
    .end local v5    # "illegalAccessException":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v14

    goto :goto_2

    .line 439
    :catch_4
    move-exception v14

    goto :goto_2

    .line 437
    :catch_5
    move-exception v14

    goto :goto_2

    .line 395
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 347
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 359
    :goto_0
    return-object v2

    .line 353
    :cond_0
    :try_start_0
    const-string/jumbo v3, "newXPathFactoryNoServiceLoader"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 352
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 355
    .local v0, "creationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 356
    .end local v0    # "creationMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "exc":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 358
    .end local v1    # "exc":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 359
    .local v1, "exc":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 542
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 560
    :cond_0
    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2, p1, v0}, Lmf/javax/xml/xpath/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 561
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0

    return-object v0
.end method

.method createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "useServicesMechanism"    # Z

    .prologue
    const/4 v7, 0x0

    .line 297
    const/4 v5, 0x0

    .line 299
    .local v5, "xPathFactory":Lmf/javax/xml/xpath/XPathFactory;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createInstance("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 303
    .local v2, "clazz":Ljava/lang/Class;
    if-nez v2, :cond_0

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "failed to getClass("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    move-object v6, v7

    .line 337
    :goto_0
    return-object v6

    .line 307
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 311
    if-nez p2, :cond_1

    .line 312
    :try_start_0
    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/xpath/XPathFactory;

    move-object v5, v0

    .line 314
    :cond_1
    if-nez v5, :cond_2

    .line 315
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/xpath/XPathFactory;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    move-object v6, v5

    .line 337
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "classCastException":Ljava/lang/ClassCastException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 319
    sget-boolean v6, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v6, :cond_3

    .line 320
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_3
    move-object v6, v7

    .line 322
    goto :goto_0

    .line 323
    .end local v1    # "classCastException":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v3

    .line 324
    .local v3, "illegalAccessException":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 325
    sget-boolean v6, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v6, :cond_4

    .line 326
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_4
    move-object v6, v7

    .line 328
    goto :goto_0

    .line 329
    .end local v3    # "illegalAccessException":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 330
    .local v4, "instantiationException":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 331
    sget-boolean v6, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v6, :cond_5

    .line 332
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_5
    move-object v6, v7

    .line 334
    goto/16 :goto_0
.end method

.method public newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 158
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 160
    .local v0, "f":Lmf/javax/xml/xpath/XPathFactory;
    if-eqz v0, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "factory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to find a factory for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method
