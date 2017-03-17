.class public Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
.super Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScannedEntity"
.end annotation


# instance fields
.field public baseCharOffset:I

.field public ch:[C

.field public columnNumber:I

.field public count:I

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field externallySpecifiedEncoding:Z

.field private fByteBuffer:[B

.field private fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public startPosition:I

.field public stream:Ljava/io/InputStream;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field public xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "entityLocation"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p4, "stream"    # Ljava/io/InputStream;
    .param p5, "reader"    # Ljava/io/Reader;
    .param p6, "byteBuffer"    # [B
    .param p7, "encoding"    # Ljava/lang/String;
    .param p8, "literal"    # Z
    .param p9, "mayReadChunks"    # Z
    .param p10, "isExternal"    # Z

    .prologue
    const/4 v1, 0x1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-boolean v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    const-string v0, "1.0"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    iput-object p5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iput-object p7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    iput-boolean p9, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    iput-boolean p10, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    move-result-object v0

    invoke-virtual {v0, p10}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->getBuffer(Z)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->ch:[C
    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)[C

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iput-object p6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 6

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "firstExternalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "firstExternalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "firstExternalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "firstExternalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .local v0, "firstExternalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public isEncodingExternallySpecified()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    return v0
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setEncodingExternallySpecified(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    return-void
.end method

.method public setReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "isBigEndian"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager;[B)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B
    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$2(Lmf/org/apache/xerces/impl/XMLEntityManager;)[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ",ch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",baseCharOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
