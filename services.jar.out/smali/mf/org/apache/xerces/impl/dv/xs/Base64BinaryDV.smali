.class public Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "Base64BinaryDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    .local v0, "decoded":[B
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "base64Binary"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 46
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;-><init>([B)V

    return-object v1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x81f

    return v0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->getLength()I

    move-result v0

    return v0
.end method
