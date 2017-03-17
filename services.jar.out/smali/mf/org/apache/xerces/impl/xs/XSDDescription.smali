.class public Lmf/org/apache/xerces/impl/xs/XSDDescription;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XSDDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;


# static fields
.field public static final CONTEXT_ATTRIBUTE:S = 0x6s

.field public static final CONTEXT_ELEMENT:S = 0x5s

.field public static final CONTEXT_IMPORT:S = 0x2s

.field public static final CONTEXT_INCLUDE:S = 0x0s

.field public static final CONTEXT_INITIALIZE:S = -0x1s

.field public static final CONTEXT_INSTANCE:S = 0x4s

.field public static final CONTEXT_PREPARSE:S = 0x3s

.field public static final CONTEXT_REDEFINE:S = 0x1s

.field public static final CONTEXT_XSITYPE:S = 0x7s


# instance fields
.field protected fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field protected fContextType:S

.field protected fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

.field protected fLocationHints:[Ljava/lang/String;

.field protected fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "descObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .local v0, "desc":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fromInstance()Z
    .locals 2

    .prologue
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAttributes()Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object v0
.end method

.method public getContextType()S
    .locals 1

    .prologue
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    return v0
.end method

.method public getEnclosingElementName()Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    return-object v0
.end method

.method public getLocationHints()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeringComponent()Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .locals 2

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fBaseSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fBaseSystemId:Ljava/lang/String;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fExpandedSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fExpandedSystemId:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLiteralSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLiteralSystemId:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fPublicId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fPublicId:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method public setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method public setContextType(S)V
    .locals 0
    .param p1, "contextType"    # S

    .prologue
    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    return-void
.end method

.method public setEnclosingElementName(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0
    .param p1, "enclosedElementName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method

.method public setLocationHints([Ljava/lang/String;)V
    .locals 3
    .param p1, "locationHints"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    array-length v0, p1

    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setTargetNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetNamespace"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    return-void
.end method

.method public setTriggeringComponent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0
    .param p1, "triggeringComponent"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method
