.class final Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;
.super Lmf/org/apache/xerces/xni/QName;
.source "QNameDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSQName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/QNameDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XQName"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 93
    instance-of v2, p1, Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    .line 95
    .local v0, "qname":Lmf/org/apache/xerces/xni/QName;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->uri:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->localpart:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 97
    .end local v0    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_0
    return v1
.end method

.method public getJAXPQName()Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->localpart:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getXNIQName()Lmf/org/apache/xerces/xni/QName;
    .locals 0

    .prologue
    .line 107
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->rawname:Ljava/lang/String;

    return-object v0
.end method
