.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "SchemaDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;
    }
.end annotation


# static fields
.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"


# instance fields
.field config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field private fAnnotationDepth:I

.field private fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

.field private fDepth:I

.field private fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

.field fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fGenerateSyntheticAnnotation:Z

.field private fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field private fInnerAnnotationDepth:I

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method

.method private hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    sget-object v3, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    sget-object v3, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v6, "i":I
    :goto_0
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    if-lt v6, v0, :cond_0

    .end local v6    # "i":I
    :goto_1
    return-void

    .restart local v6    # "i":I
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v0, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v7, Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v6

    invoke-direct {v7, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    .local v7, "txt":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "s4s-elt-character"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .end local v7    # "txt":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_1
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->comment(Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3a

    const/4 v10, -0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAllAttributes()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "schemaPrefix":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    .local v6, "annRawName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, v6, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    .local v7, "elemRawName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, v7, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string v1, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    .end local v6    # "annRawName":Ljava/lang/String;
    .end local v7    # "elemRawName":Ljava/lang/String;
    .end local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .restart local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .restart local v6    # "annRawName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .end local v6    # "annRawName":Ljava/lang/String;
    .end local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_5

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v8

    .local v8, "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_6

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    goto :goto_2

    .end local v8    # "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_3

    .restart local v8    # "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_2
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationCDATA()V

    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/4 v7, -0x1

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-le v5, v7, :cond_2

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-ne v5, v6, :cond_0

    iput v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    return-void

    :cond_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-ne v5, v6, :cond_1

    iput v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {v5, p1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    :cond_2
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v4

    .local v4, "value":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v2

    .local v2, "sawann":Z
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "schemaPrefix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    .local v0, "annRawName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v5, v0, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    .local v1, "elemRawName":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string v6, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .end local v0    # "annRawName":Ljava/lang/String;
    .end local v1    # "elemRawName":Ljava/lang/String;
    .end local v2    # "sawann":Z
    .end local v3    # "schemaPrefix":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_0

    .restart local v2    # "sawann":Z
    .restart local v3    # "schemaPrefix":Ljava/lang/String;
    .restart local v4    # "value":Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "annRawName":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetNodePool()V

    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1
    .param p1, "er"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationCDATA()V

    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->setDocumentURI(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    goto :goto_0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_0
.end method
