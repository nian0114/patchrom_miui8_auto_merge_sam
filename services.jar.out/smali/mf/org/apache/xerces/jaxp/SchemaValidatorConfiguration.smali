.class final Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;
.super Ljava/lang/Object;
.source "SchemaValidatorConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUseGrammarPoolOnly:Z

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lmf/org/apache/xerces/impl/validation/ValidationManager;)V
    .locals 3
    .param p1, "parentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p2, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;
    .param p3, "validationManager"    # Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {p2}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p2}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .local v0, "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    if-eqz v0, :cond_0

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fUseGrammarPoolOnly:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
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
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;->fParentComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
