.class Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEngineDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

.field private mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$1000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object v0

    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    move-object v0, v1

    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SdpManagerService"

    const-string v3, "getEngineListLocked :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .local v3, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .local v1, "newSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .local v2, "parser":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1    # "newSAXParser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "parser":Lorg/xml/sax/XMLReader;
    .end local v3    # "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$800(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method private storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$700(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method private updateEngineListLocked()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$600(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I

    move-result v0

    return v0
.end method
