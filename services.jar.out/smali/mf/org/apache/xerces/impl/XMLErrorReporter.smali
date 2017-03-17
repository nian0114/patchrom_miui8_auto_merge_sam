.class public Lmf/org/apache/xerces/impl/XMLErrorReporter;
.super Ljava/lang/Object;
.source "XMLErrorReporter.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field public static final SEVERITY_ERROR:S = 0x1s

.field public static final SEVERITY_FATAL_ERROR:S = 0x2s

.field public static final SEVERITY_WARNING:S


# instance fields
.field protected fContinueAfterFatalError:Z

.field protected fDefaultErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMessageFormatters:Ljava/util/Hashtable;

.field private fSaxProxy:Lorg/xml/sax/ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "suffixLength":I
    const-string v1, "continue-after-fatal-error"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v1, "continue-after-fatal-error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    .end local v0    # "suffixLength":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/MessageFormatter;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLErrorReporter$1;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/MessageFormatter;

    return-object v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "severity"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "severity"    # S
    .param p5, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    .locals 7
    .param p1, "location"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .param p5, "severity"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    .locals 8
    .param p1, "location"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .param p5, "severity"    # S
    .param p6, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    .local v4, "messageFormatter":Lmf/org/apache/xerces/util/MessageFormatter;
    if-eqz v4, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    invoke-interface {v4, v7, p3, p4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "message":Ljava/lang/String;
    :goto_0
    if-eqz p6, :cond_8

    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-direct {v5, p1, v3, p6}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    .local v5, "parseException":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .local v1, "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    if-nez v1, :cond_1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fDefaultErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v7, :cond_0

    new-instance v7, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v7}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    iput-object v7, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fDefaultErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fDefaultErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    packed-switch p5, :pswitch_data_0

    :cond_2
    :goto_2
    return-object v3

    .end local v1    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "parseException":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_5

    array-length v0, p4

    .local v0, "argCount":I
    :goto_3
    if-lez v0, :cond_4

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-lt v2, v0, :cond_6

    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "argCount":I
    .end local v3    # "message":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .restart local v0    # "argCount":I
    .restart local v2    # "i":I
    :cond_6
    aget-object v7, p4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_7

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "argCount":I
    .end local v2    # "i":I
    .end local v6    # "str":Ljava/lang/StringBuffer;
    .restart local v3    # "message":Ljava/lang/String;
    :cond_8
    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-direct {v5, p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    goto :goto_1

    .restart local v1    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .restart local v5    # "parseException":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :pswitch_0
    invoke-interface {v1, p2, p3, v5}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_2

    :pswitch_1
    invoke-interface {v1, p2, p3, v5}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_2

    :pswitch_2
    invoke-interface {v1, p2, p3, v5}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    if-nez v7, :cond_2

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fContinueAfterFatalError:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    goto :goto_0
.end method

.method public setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "suffixLength":I
    const-string v1, "continue-after-fatal-error"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v1, "continue-after-fatal-error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    .end local v0    # "suffixLength":I
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "suffixLength":I
    const-string v1, "internal/error-handler"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v1, "internal/error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .end local v0    # "suffixLength":I
    :cond_0
    return-void
.end method
