.class public Lmf/org/apache/xerces/parsers/StandardParserConfiguration;
.super Lmf/org/apache/xerces/parsers/DTDConfiguration;
.source "StandardParserConfiguration.java"


# static fields
.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field protected fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 9
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 219
    const/16 v2, 0xe

    new-array v0, v2, [Ljava/lang/String;

    .line 220
    const-string v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v2, v0, v4

    .line 221
    const-string v2, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v2, v0, v5

    .line 222
    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v2, v0, v6

    .line 223
    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v7

    .line 224
    const-string v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    .line 225
    const-string v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 226
    const-string v3, "http://apache.org/xml/features/namespace-growth"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 227
    const-string v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 232
    const-string v3, "http://apache.org/xml/features/validation/schema"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 233
    const-string v3, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    .line 234
    const-string v3, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    .line 235
    const-string v3, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    .line 236
    const-string v3, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    .line 237
    const-string v3, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v3, v0, v2

    .line 239
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 242
    const-string v2, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 243
    const-string v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 244
    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 245
    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 246
    const-string v2, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 247
    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 248
    const-string v2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 249
    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 251
    const-string v2, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 252
    const-string v2, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 253
    const-string v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 254
    const-string v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 258
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    .line 263
    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v1, v4

    .line 264
    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v1, v5

    .line 265
    const-string v2, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v2, v1, v6

    .line 266
    const-string v2, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v2, v1, v7

    .line 267
    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v1, v8

    .line 270
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 326
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 333
    .local v0, "suffixLength":I
    const-string v1, "validation/schema"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 334
    const-string v1, "validation/schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v1, "validation/schema-full-checking"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 339
    const-string v1, "validation/schema-full-checking"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    :cond_2
    const-string v1, "validation/schema/normalized-value"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 345
    const-string v1, "validation/schema/normalized-value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    :cond_3
    const-string v1, "validation/schema/element-default"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 351
    const-string v1, "validation/schema/element-default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    .end local v0    # "suffixLength":I
    :cond_4
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->checkFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 384
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 387
    .local v0, "suffixLength":I
    const-string v1, "schema/external-schemaLocation"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 388
    const-string v1, "schema/external-schemaLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v1, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 392
    const-string v1, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    .end local v0    # "suffixLength":I
    :cond_2
    const-string v1, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 400
    .restart local v0    # "suffixLength":I
    const-string v1, "schemaSource"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 401
    const-string v1, "schemaSource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    .end local v0    # "suffixLength":I
    :cond_3
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configurePipeline()V
    .locals 4

    .prologue
    .line 279
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    .line 280
    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 286
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 289
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    .line 291
    .local v0, "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 295
    .end local v0    # "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 296
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 298
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 299
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 303
    :cond_1
    return-void
.end method
