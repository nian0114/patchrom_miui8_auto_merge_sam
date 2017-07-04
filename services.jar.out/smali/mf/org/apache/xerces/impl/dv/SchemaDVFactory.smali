.class public abstract Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
.super Ljava/lang/Object;
.source "SchemaDVFactory.java"


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.xs.SchemaDVFactoryImpl"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "mf.org.apache.xerces.impl.dv.xs.SchemaDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    .locals 4
    .param p0, "factoryClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e4":Ljava/lang/ClassCastException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/DVFactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Schema factory class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not extend from SchemaDVFactory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/dv/DVFactoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
.end method
