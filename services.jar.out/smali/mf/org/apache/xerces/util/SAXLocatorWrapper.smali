.class public final Lmf/org/apache/xerces/util/SAXLocatorWrapper;
.super Ljava/lang/Object;
.source "SAXLocatorWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocator:Lorg/xml/sax/Locator;

.field private fLocator2:Lorg/xml/sax/ext/Locator2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    instance-of v0, p1, Lorg/xml/sax/ext/Locator2;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    check-cast p1, Lorg/xml/sax/ext/Locator2;

    .end local p1    # "locator":Lorg/xml/sax/Locator;
    iput-object p1, p0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    :cond_1
    return-void
.end method
