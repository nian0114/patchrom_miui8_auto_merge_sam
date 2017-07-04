.class public abstract Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
.super Ljava/lang/Object;
.source "DTDDVFactory.java"


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.DTDDVFactoryImpl"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v0, "mf.org.apache.xerces.impl.dv.dtd.DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 4
    .param p0, "factoryClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    .line 59
    check-cast v1, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/DVFactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTD factory class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not extend from DTDDVFactory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/dv/DVFactoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
.end method

.method public abstract getBuiltInTypes()Ljava/util/Hashtable;
.end method
