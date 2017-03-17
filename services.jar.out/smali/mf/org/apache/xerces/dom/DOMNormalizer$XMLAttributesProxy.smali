.class public final Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DOMNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "XMLAttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

.field protected final fAugmentations:Ljava/util/Vector;

.field protected final fDTDTypes:Ljava/util/Vector;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field protected fElement:Lmf/org/apache/xerces/dom/ElementImpl;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1441
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    .line 1448
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    return-void
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1599
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 1600
    const-string p1, "NMTOKEN"

    .line 1602
    .end local p1    # "type":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "qname"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attrType"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 1477
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1479
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1483
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 1484
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1485
    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1486
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 1483
    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 1482
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1488
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->setXercesAttributeNode(Lmf/org/w3c/dom/Attr;)I

    move-result v1

    .line 1490
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v2, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1491
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v3, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1492
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 1502
    .end local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_0
    return v1
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "attributeIndex"    # I

    .prologue
    .line 1657
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 1667
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 1662
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 1523
    const/4 v0, -0x1

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 1528
    const/4 v0, -0x1

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1563
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_1

    .line 1564
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    .line 1565
    .local v1, "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "localName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    .end local v0    # "localName":Ljava/lang/String;
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v0

    .restart local v0    # "localName":Ljava/lang/String;
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    move-object v0, v2

    .line 1566
    goto :goto_0

    .end local v0    # "localName":Ljava/lang/String;
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    move-object v0, v2

    .line 1569
    goto :goto_0
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 2
    .param p1, "attrIndex"    # I
    .param p2, "attrName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1536
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-virtual {v1, v0, p2}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    .line 1539
    :cond_0
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "attrIndex"    # I

    .prologue
    .line 1644
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1542
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_1

    .line 1543
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    .line 1544
    .local v0, "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1548
    .end local v0    # "node":Lmf/org/w3c/dom/Node;
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "node":Lmf/org/w3c/dom/Node;
    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 1545
    goto :goto_0

    .end local v0    # "node":Lmf/org/w3c/dom/Node;
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 1548
    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1573
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    .line 1574
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    .line 1575
    .local v0, "node":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1578
    .end local v0    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1586
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1587
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 1591
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 1595
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1552
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_1

    .line 1553
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    .line 1554
    .local v1, "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    .end local v0    # "namespace":Ljava/lang/String;
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v0

    .restart local v0    # "namespace":Ljava/lang/String;
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    move-object v0, v2

    .line 1555
    goto :goto_0

    .end local v0    # "namespace":Ljava/lang/String;
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    move-object v0, v2

    .line 1558
    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1620
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 1626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1630
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    .line 1631
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1632
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1634
    .end local v0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    return-object v1
.end method

.method public isSpecified(I)Z
    .locals 1
    .param p1, "attrIndex"    # I

    .prologue
    .line 1653
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    return v0
.end method

.method public removeAllAttributes()V
    .locals 0

    .prologue
    .line 1508
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 0
    .param p1, "attrIndex"    # I

    .prologue
    .line 1513
    return-void
.end method

.method public setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 4
    .param p1, "attributes"    # Lmf/org/apache/xerces/dom/AttributeMap;
    .param p2, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p3, "elem"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    const/4 v3, 0x0

    .line 1451
    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 1452
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 1453
    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 1454
    if-eqz p1, :cond_1

    .line 1455
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v1

    .line 1456
    .local v1, "length":I
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1457
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1469
    .end local v0    # "i":I
    .end local v1    # "length":I
    :goto_1
    return-void

    .line 1462
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v3, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 1467
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    goto :goto_1
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 1677
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1678
    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 0
    .param p1, "attrIndex"    # I
    .param p2, "attrName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1533
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0
    .param p1, "attrIndex"    # I
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 1640
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 2
    .param p1, "attrIndex"    # I
    .param p2, "specified"    # Z

    .prologue
    .line 1648
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1649
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 1650
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "attrType"    # Ljava/lang/String;

    .prologue
    .line 1582
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1583
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "attrIndex"    # I
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 1610
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    .line 1611
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1612
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v1

    .line 1613
    .local v1, "specified":Z
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 1617
    .end local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local v1    # "specified":Z
    :cond_0
    return-void
.end method
