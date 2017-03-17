.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;
.super Ljava/lang/Object;
.source "XMLSchemaLoader.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fExternalNoNSSchema:Ljava/lang/String;

.field private fExternalSchemas:Ljava/lang/String;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIsCheckedFully:Z

.field private fJAXPCache:Ljava/util/WeakHashMap;

.field private fJAXPProcessed:Z

.field private fJAXPSource:Ljava/lang/Object;

.field private final fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field private fSettingsChanged:Z

.field private fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field private fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v1, v0, v3

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v1, v0, v4

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v1, v0, v5

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v1, v0, v6

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v1, v0, v6

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://apache.org/xml/properties/security-manager"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http://apache.org/xml/properties/locale"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 7
    .param p1, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p2, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    .param p3, "sHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "builder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v2, 0x0

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 5
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p3, "entityResolver"    # Lmf/org/apache/xerces/impl/XMLEntityManager;
    .param p4, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    .param p5, "sHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p6, "builder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    new-instance v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v1, v2, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    invoke-direct {p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    .restart local p2    # "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v2, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    if-nez p4, :cond_4

    new-instance p4, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .end local p4    # "grammarBucket":Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    .restart local p4    # "grammarBucket":Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    :cond_4
    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez p5, :cond_5

    new-instance p5, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .end local p5    # "sHandler":Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    invoke-direct {p5, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    .restart local p5    # "sHandler":Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    :cond_5
    iput-object p5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    .local v0, "nodeFactory":Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;
    if-nez p6, :cond_6

    new-instance p6, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .end local p6    # "builder":Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    invoke-direct {p6, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    .restart local p6    # "builder":Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    :cond_6
    iput-object p6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "flag1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    return-void
.end method

.method private initGrammarBucket()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v3, v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .local v1, "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v1, :cond_1

    array-length v2, v1

    .local v2, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .end local v0    # "i":I
    .end local v1    # "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .end local v2    # "length":I
    :cond_0
    return-void

    .restart local v1    # "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_1
    move v2, v4

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object v3, v1, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    const-string v6, "GrammarConflict"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z
    .locals 1
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 8
    .param p0, "sl"    # Ljava/lang/String;
    .param p1, "nsl"    # Ljava/lang/String;
    .param p2, "locations"    # Ljava/util/Hashtable;
    .param p3, "er"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    const/4 v7, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .local v0, "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "SchemaLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x0

    invoke-virtual {p3, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :try_start_1
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .restart local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .local v2, "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-nez v2, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .restart local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .end local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .end local v1    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1
.end method

.method private processJAXPSchemaSource(Ljava/util/Hashtable;)V
    .locals 19
    .param p1, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .local v2, "componentType":Ljava/lang/Class;
    const/4 v11, 0x0

    .local v11, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v9, 0x0

    .local v9, "sid":Ljava/lang/String;
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v3, "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x3

    iput-short v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    iput-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v11, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .restart local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12, v13, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_0

    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_7
    const-class v12, Ljava/lang/Object;

    if-eq v2, v12, :cond_8

    const-class v12, Ljava/lang/String;

    if-eq v2, v12, :cond_8

    const-class v12, Ljava/io/File;

    if-eq v2, v12, :cond_8

    const-class v12, Ljava/io/InputStream;

    if-eq v2, v12, :cond_8

    const-class v12, Lorg/xml/sax/InputSource;

    if-eq v2, v12, :cond_8

    const-class v12, Ljava/io/File;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    const-class v12, Ljava/io/InputStream;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    const-class v12, Lorg/xml/sax/InputSource;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v7

    .local v7, "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v12, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "jaxp12-schema-source-type.2"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-interface {v7, v14, v15, v0}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v12

    .end local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .local v8, "objArr":[Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "jaxpSchemaSourceNamespaces":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v8

    if-ge v5, v12, :cond_0

    aget-object v12, v8, v5

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_9

    aget-object v12, v8, v5

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .restart local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    aget-object v12, v8, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x3

    iput-short v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    iput-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_c
    const/4 v10, 0x0

    .local v10, "targetNamespace":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p1

    invoke-virtual {v12, v11, v13, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .local v4, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_d
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v7

    .restart local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "jaxp12-schema-source-ns"

    const/4 v15, 0x0

    invoke-interface {v7, v13, v14, v15}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    :cond_e
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v8, v5

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_f

    aget-object v12, v8, v5

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v13, v8, v5

    invoke-virtual {v12, v13, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_2
.end method

.method public static resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .param p0, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p1, "locationPairs"    # Ljava/util/Hashtable;
    .param p2, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .local v2, "loc":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fromInstance()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    .local v3, "namespace":Ljava/lang/String;
    if-nez v3, :cond_3

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .local v4, "ns":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .local v5, "tempLA":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getFirstLocation()Ljava/lang/String;

    move-result-object v2

    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "tempLA":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    .local v1, "hints":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    aget-object v2, v1, v8

    .end local v1    # "hints":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "expandedLoc":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v6

    return-object v6

    .end local v0    # "expandedLoc":Ljava/lang/String;
    .restart local v3    # "namespace":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    goto :goto_0
.end method

.method private static saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 11
    .param p0, "sis"    # Lorg/xml/sax/InputSource;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .local v1, "publicId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .local v2, "systemId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .local v4, "charStream":Ljava/io/Reader;
    if-eqz v4, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "byteStream":Ljava/io/InputStream;
    if-eqz v9, :cond_1

    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 6
    .param p0, "schemaStr"    # Ljava/lang/String;
    .param p1, "locations"    # Ljava/util/Hashtable;
    .param p2, "base"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " \n\t\r"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2

    .end local v3    # "t":Ljava/util/StringTokenizer;
    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4

    .restart local v3    # "t":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "location":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .local v0, "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-nez v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .restart local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, p2, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 16
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/String;

    .local v10, "loc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v10, v4, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    if-nez v12, :cond_0

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v10, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "loc":Ljava/lang/String;
    .end local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .end local p1    # "val":Ljava/lang/Object;
    :goto_1
    return-object v1

    .restart local v10    # "loc":Ljava/lang/String;
    .restart local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local p1    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "schema_reference.4"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v6, v13

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v4, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .end local v7    # "ex":Ljava/io/IOException;
    :cond_0
    move-object v1, v12

    goto :goto_1

    .end local v10    # "loc":Ljava/lang/String;
    .end local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/xml/sax/InputSource;

    .end local p1    # "val":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    goto :goto_1

    .restart local p1    # "val":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_3

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p1

    check-cast v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_4

    move-object/from16 v8, p1

    check-cast v8, Ljava/io/File;

    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "escapedURI":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move-object v5, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_2
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "schema_reference.4"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v4, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .end local v3    # "escapedURI":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    .end local v8    # "file":Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v11

    .local v11, "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v13, "jaxp12-schema-source-type.1"

    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v15, 0x0

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v14, v15

    invoke-interface {v11, v6, v13, v14}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_5
    const-string v1, "null"

    goto :goto_3
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "resource-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    const/4 v0, 0x0

    .local v0, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-16"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    return-object p0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    const-string v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .local v0, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v6, "error-handler"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v6, "resource-resolver"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v5

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    .local v2, "feature":Z
    if-eqz v2, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "feature":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, "property":Ljava/lang/Object;
    move-object v5, v4

    goto :goto_0

    .end local v4    # "property":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "FEATURE_NOT_SUPPORTED"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "v":Ljava/util/ArrayList;
    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .end local v0    # "v":Ljava/util/ArrayList;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 3
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .local v1, "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    .end local v1    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 7
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v3, 0x3

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .local v2, "locationPairs":Ljava/util/Hashtable;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v3, v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    invoke-virtual {p0, v0, p1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_0
    return-object v1
.end method

.method public loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .param p1, "source"    # [Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    array-length v1, p1

    .local v1, "numSource":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5
    .param p1, "is"    # Lmf/org/apache/xerces/xs/LSInputList;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v3

    .local v3, "length":I
    new-array v1, v3, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v1, "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v4, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :goto_1
    return-object v4

    :cond_0
    :try_start_0
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 2
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processJAXPSchemaSource(Ljava/util/Hashtable;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .local v0, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    return-object v0
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .local v1, "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    .end local v1    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 9
    .param p1, "uriList"    # Lmf/org/apache/xerces/xs/StringList;

    .prologue
    const/4 v5, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v3

    .local v3, "length":I
    new-array v1, v3, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v1, "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v4, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :goto_1
    return-object v4

    :cond_0
    :try_start_0
    new-instance v4, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v6, 0x0

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    move-object v4, v5

    goto :goto_1
.end method

.method reportDOMFatalError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .local v0, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .end local v0    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->reset()V

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->reset()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const/4 v1, 0x0

    .local v1, "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :try_start_0
    const-string v5, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, v0
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    if-nez v1, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    if-nez v5, :cond_3

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V

    :try_start_1
    const-string v5, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    const-string v5, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    const/4 v4, 0x1

    .local v4, "psvi":Z
    :try_start_4
    const-string v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    :goto_5
    if-nez v4, :cond_5

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    instance-of v5, v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    if-eqz v5, :cond_6

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    .end local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    :cond_6
    :try_start_5
    const-string v5, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .local v3, "fatalError":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v3    # "fatalError":Z
    :goto_6
    :try_start_6
    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const-string v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto/16 :goto_0

    .end local v4    # "psvi":Z
    .restart local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :catch_0
    move-exception v2

    .local v2, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_2

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_3

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_4

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v4    # "psvi":Z
    :catch_3
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v4, 0x0

    goto :goto_5

    .end local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    goto :goto_7

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_8

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v5

    goto :goto_6

    .end local v4    # "psvi":Z
    .restart local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :catch_7
    move-exception v5

    goto/16 :goto_1
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v6, 0x1

    const/4 v7, 0x0

    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "state":Z
    const-string v4, "validate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .end local v3    # "state":Z
    :goto_0
    return-void

    .restart local v3    # "state":Z
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "FEATURE_NOT_SUPPORTED"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v4, "error-handler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v4, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "FEATURE_NOT_SUPPORTED"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const-string v4, "resource-resolver"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v4, :cond_4

    :try_start_2
    new-instance v4, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "FEATURE_NOT_SUPPORTED"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .end local v2    # "msg":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "FEATURE_NOT_SUPPORTED"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .end local p2    # "state":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local p2    # "state":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_0

    .restart local p2    # "state":Ljava/lang/Object;
    :cond_2
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    goto :goto_0

    .restart local p2    # "state":Ljava/lang/Object;
    :cond_3
    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_0

    .restart local p2    # "state":Ljava/lang/Object;
    :cond_4
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/util/Locale;

    .end local p2    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .restart local p2    # "state":Ljava/lang/Object;
    :cond_5
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_0
.end method
