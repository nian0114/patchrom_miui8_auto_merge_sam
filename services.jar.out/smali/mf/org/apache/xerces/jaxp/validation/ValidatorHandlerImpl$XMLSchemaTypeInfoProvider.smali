.class Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
.super Lmf/javax/xml/validation/TypeInfoProvider;
.source "ValidatorHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XMLSchemaTypeInfoProvider"
.end annotation


# instance fields
.field private fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field private fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

.field private fInEndElement:Z

.field private fInStartElement:Z

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-direct {p0}, Lmf/javax/xml/validation/TypeInfoProvider;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)V

    return-void
.end method

.method private checkStateAttribute()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->access$0(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "TypeInfoProviderIllegalStateAttribute"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkStateElement()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->access$0(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "TypeInfoProviderIllegalStateElement"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getAttributeType(I)Lmf/org/w3c/dom/TypeInfo;
    .locals 4
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    if-ltz p1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-gt v2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .local v0, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    const-string v2, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/AttributePSVI;

    .local v1, "psvi":Lmf/org/apache/xerces/xs/AttributePSVI;
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lmf/org/apache/xerces/xs/ItemPSVI;)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private getTypeInfoFromPSVI(Lmf/org/apache/xerces/xs/ItemPSVI;)Lmf/org/w3c/dom/TypeInfo;
    .locals 4
    .param p1, "psvi"    # Lmf/org/apache/xerces/xs/ItemPSVI;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ItemPSVI;->getValidity()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    .local v0, "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_3

    instance-of v2, v0, Lmf/org/w3c/dom/TypeInfo;

    if-eqz v2, :cond_2

    check-cast v0, Lmf/org/w3c/dom/TypeInfo;

    .end local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    move-object v0, v1

    goto :goto_1

    .end local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_3
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .restart local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lmf/org/w3c/dom/TypeInfo;

    if-eqz v2, :cond_4

    check-cast v0, Lmf/org/w3c/dom/TypeInfo;

    .end local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_2
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "t":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method beginEndElement(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementAugs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method beginStartElement(Lmf/org/apache/xerces/xni/Augmentations;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 1
    .param p1, "elementAugs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method finishEndElement()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method finishStartElement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .local v0, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    if-eqz v0, :cond_0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/AttributePSVI;

    .end local v0    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .local v0, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    if-eqz v0, :cond_0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/AttributePSVI;

    .end local v0    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeTypeInfo(I)Lmf/org/w3c/dom/TypeInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lmf/org/w3c/dom/TypeInfo;
    .locals 1
    .param p1, "attributeQName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/TypeInfo;
    .locals 1
    .param p1, "attributeUri"    # Ljava/lang/String;
    .param p2, "attributeLocalName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v0

    return-object v0
.end method

.method getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v1, "ELEMENT_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 3

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateElement()V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v2, "ELEMENT_PSVI"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    .local v0, "psvi":Lmf/org/apache/xerces/xs/ElementPSVI;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lmf/org/apache/xerces/xs/ItemPSVI;)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public isIdAttribute(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lmf/org/w3c/dom/TypeInfo;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .local v0, "type":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v0

    return v0
.end method
