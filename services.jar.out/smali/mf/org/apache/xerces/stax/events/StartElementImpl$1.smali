.class Lmf/org/apache/xerces/stax/events/StartElementImpl$1;
.super Ljava/lang/Object;
.source "StartElementImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/stax/events/StartElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 54
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 52
    check-cast v0, Lmf/javax/xml/namespace/QName;

    .local v0, "name1":Lmf/javax/xml/namespace/QName;
    move-object v1, p2

    .line 53
    check-cast v1, Lmf/javax/xml/namespace/QName;

    .line 54
    .local v1, "name2":Lmf/javax/xml/namespace/QName;
    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
