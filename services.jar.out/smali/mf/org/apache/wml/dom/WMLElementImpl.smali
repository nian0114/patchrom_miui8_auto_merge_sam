.class public Lmf/org/apache/wml/dom/WMLElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "WMLElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLElement;


# static fields
.field private static final serialVersionUID:J = 0x2fc0d55b31447e94L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAttribute(Ljava/lang/String;I)I
    .locals 3
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    move v0, p2

    .local v0, "ret":I
    const-string v2, "emptyok"

    invoke-virtual {p0, v2}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method getAttribute(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    move v0, p2

    .local v0, "ret":Z
    const-string v2, "emptyok"

    invoke-virtual {p0, v2}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;I)V
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
