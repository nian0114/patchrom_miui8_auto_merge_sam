.class public Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
.super Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExternalEntity"
.end annotation


# instance fields
.field public entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field public notation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entityLocation"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "inExternalSubset"    # Z

    .prologue
    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 1
    .param p1, "entity"    # Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;)V
    .locals 1
    .param p1, "entity"    # Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .prologue
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method
