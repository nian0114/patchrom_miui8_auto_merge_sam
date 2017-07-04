.class public Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
.super Lmf/org/apache/xerces/impl/xpath/XPath;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 4
    .param p1, "xpath"    # Ljava/lang/String;
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p3, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 129
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    .line 124
    .local v0, "axis":Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    iget-short v2, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 125
    new-instance v2, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-selector-xpath"

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "xpath"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 140
    .local v0, "modifiedXPath":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 142
    .local v1, "unionIndex":I
    :goto_0
    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_0
    const/16 v2, 0x7c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 146
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    goto :goto_0
.end method
