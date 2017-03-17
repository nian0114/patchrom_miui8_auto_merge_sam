.class public final Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;
.super Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.source "XSNamedMap4Types.java"


# instance fields
.field private final fType:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "map"    # Lmf/org/apache/xerces/util/SymbolHash;
    .param p3, "type"    # S

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 48
    iput-short p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    .line 49
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;IS)V
    .locals 0
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "maps"    # [Lmf/org/apache/xerces/util/SymbolHash;
    .param p3, "num"    # I
    .param p4, "type"    # S

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V

    .line 61
    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    .line 62
    return-void
.end method


# virtual methods
.method public declared-synchronized getLength()I
    .locals 8

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-lt v1, v5, :cond_1

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "pos":I
    new-array v0, v2, [Lmf/org/apache/xerces/xs/XSObject;

    .line 79
    .local v0, "array":[Lmf/org/apache/xerces/xs/XSObject;
    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-lt v1, v5, :cond_2

    .line 84
    const/4 v5, 0x0

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    .line 85
    new-array v5, v2, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 87
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_3

    .line 94
    .end local v0    # "array":[Lmf/org/apache/xerces/xs/XSObject;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "pos":I
    :cond_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    .line 74
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v5

    add-int/2addr v2, v5

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .restart local v0    # "array":[Lmf/org/apache/xerces/xs/XSObject;
    .restart local v3    # "pos":I
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0, v3}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    aget-object v4, v0, v1

    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 89
    .local v4, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v5

    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-ne v5, v6, :cond_4

    .line 90
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    aput-object v4, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    .end local v0    # "array":[Lmf/org/apache/xerces/xs/XSObject;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "pos":I
    .end local v4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->getLength()I

    .line 135
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_2

    .line 136
    :cond_1
    const/4 v0, 0x0

    .line 138
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-lt v0, v3, :cond_1

    move-object v1, v2

    .line 118
    :cond_0
    :goto_1
    return-object v1

    .line 109
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNamespaces:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 112
    .local v1, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-eq v3, v4, :cond_0

    :cond_2
    move-object v1, v2

    .line 115
    goto :goto_1

    .line 108
    .end local v1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
