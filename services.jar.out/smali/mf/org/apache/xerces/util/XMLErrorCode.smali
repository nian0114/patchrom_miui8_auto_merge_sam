.class final Lmf/org/apache/xerces/util/XMLErrorCode;
.super Ljava/lang/Object;
.source "XMLErrorCode.java"


# instance fields
.field private fDomain:Ljava/lang/String;

.field private fKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/util/XMLErrorCode;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/util/XMLErrorCode;

    .local v0, "err":Lmf/org/apache/xerces/util/XMLErrorCode;
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method
