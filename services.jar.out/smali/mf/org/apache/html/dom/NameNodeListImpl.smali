.class public Lmf/org/apache/html/dom/NameNodeListImpl;
.super Lmf/org/apache/xerces/dom/DeepNodeListImpl;
.source "NameNodeListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "rootNode"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "current"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 56
    :cond_0
    if-nez p1, :cond_1

    .line 93
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 58
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 82
    :goto_1
    iget-object v2, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, p1

    .line 84
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "name":Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v2, p1

    .line 86
    goto :goto_0

    .line 63
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "next":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_4

    .line 64
    move-object p1, v1

    .line 65
    goto :goto_1

    .line 69
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_4
    const/4 v1, 0x0

    .line 70
    .restart local v1    # "next":Lmf/org/w3c/dom/Node;
    :goto_2
    iget-object v2, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne p1, v2, :cond_6

    .line 77
    :cond_5
    move-object p1, v1

    goto :goto_1

    .line 73
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 74
    if-nez v1, :cond_5

    .line 71
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_2
.end method
