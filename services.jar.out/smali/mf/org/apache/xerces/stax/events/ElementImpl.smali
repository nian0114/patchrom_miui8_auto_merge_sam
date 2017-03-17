.class abstract Lmf/org/apache/xerces/stax/events/ElementImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "ElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;
    }
.end annotation


# instance fields
.field private final fName:Lmf/javax/xml/namespace/QName;

.field private final fNamespaces:Ljava/util/List;


# direct methods
.method constructor <init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V
    .locals 2
    .param p1, "name"    # Lmf/javax/xml/namespace/QName;
    .param p2, "isStartElement"    # Z
    .param p3, "namespaces"    # Ljava/util/Iterator;
    .param p4, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 53
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1, p4}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 54
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fName:Lmf/javax/xml/namespace/QName;

    .line 55
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    .line 58
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    .line 59
    .local v0, "ns":Lmf/javax/xml/stream/events/Namespace;
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    .end local v0    # "ns":Lmf/javax/xml/stream/events/Namespace;
    :goto_1
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 64
    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    goto :goto_1
.end method

.method static createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "iter"    # Ljava/util/Iterator;

    .prologue
    .line 85
    new-instance v0, Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public final getName()Lmf/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fName:Lmf/javax/xml/namespace/QName;

    return-object v0
.end method

.method public final getNamespaces()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/stax/events/ElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
