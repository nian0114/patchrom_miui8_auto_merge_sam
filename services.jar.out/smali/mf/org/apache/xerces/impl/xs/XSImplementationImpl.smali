.class public Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;
.super Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;
.source "XSImplementationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createLSInputList([Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/LSInputList;
    .locals 3
    .param p1, "values"    # [Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    array-length v0, p1

    .line 117
    .local v0, "length":I
    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    invoke-virtual {p1}, [Lmf/org/w3c/dom/ls/LSInput;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmf/org/w3c/dom/ls/LSInput;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;-><init>([Lmf/org/w3c/dom/ls/LSInput;I)V

    move-object v1, v2

    :goto_1
    return-object v1

    .line 116
    .end local v0    # "length":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    .restart local v0    # "length":I
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    goto :goto_1
.end method

.method public createStringList([Ljava/lang/String;)Lmf/org/apache/xerces/xs/StringList;
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    array-length v0, p1

    .line 112
    .local v0, "length":I
    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    move-object v1, v2

    :goto_1
    return-object v1

    .line 111
    .end local v0    # "length":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    .restart local v0    # "length":I
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    goto :goto_1
.end method

.method public createXSLoader(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSLoader;
    .locals 9
    .param p1, "versions"    # Lmf/org/apache/xerces/xs/StringList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 93
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;-><init>()V

    .line 94
    .local v1, "loader":Lmf/org/apache/xerces/xs/XSLoader;
    if-nez p1, :cond_1

    .line 107
    :cond_0
    return-object v1

    .line 97
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 98
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    const-string v3, "http://www.w3.org/dom/DOMTR"

    .line 102
    const-string v4, "FEATURE_NOT_SUPPORTED"

    .line 103
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 100
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/apache/xerces/xs/XSException;

    invoke-direct {v3, v8, v2}, Lmf/org/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 97
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedVersions()Lmf/org/apache/xerces/xs/StringList;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 124
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1.0"

    aput-object v3, v1, v2

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    .line 125
    .local v0, "list":Lmf/org/apache/xerces/impl/xs/util/StringListImpl;
    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "XS-Loader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
