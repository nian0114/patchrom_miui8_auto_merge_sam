.class public abstract Lmf/javax/xml/transform/TransformerFactory;
.super Ljava/lang/Object;
.source "TransformerFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lmf/javax/xml/transform/TransformerFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    const-string/jumbo v1, "javax.xml.transform.TransformerFactory"

    .line 124
    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl"

    .line 120
    invoke-static {v1, v2}, Lmf/javax/xml/transform/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Lmf/javax/xml/transform/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;

    .line 127
    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 128
    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/transform/TransformerFactory;
    .locals 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Lmf/javax/xml/transform/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;

    .line 174
    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAssociatedStylesheet(Lmf/javax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getErrorListener()Lmf/javax/xml/transform/ErrorListener;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
.end method

.method public abstract getURIResolver()Lmf/javax/xml/transform/URIResolver;
.end method

.method public abstract newTemplates(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer()Lmf/javax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setErrorListener(Lmf/javax/xml/transform/ErrorListener;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setURIResolver(Lmf/javax/xml/transform/URIResolver;)V
.end method
