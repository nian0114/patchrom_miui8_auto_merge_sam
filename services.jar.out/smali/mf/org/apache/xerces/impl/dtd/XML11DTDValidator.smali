.class public Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;
.super Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.source "XML11DTDValidator.java"


# static fields
.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    .line 65
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValidation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDynamicValidation:Z

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    invoke-super {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    .line 70
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string v2, "XML11ID"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 71
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string v2, "XML11IDREF"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 72
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string v2, "XML11IDREFS"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 73
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string v2, "XML11NMTOKEN"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 74
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string v2, "XML11NMTOKENS"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .param p1, "manager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "curr":Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "curr":Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .restart local v0    # "curr":Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    if-eqz v0, :cond_0

    .line 58
    if-eq v0, p0, :cond_0

    .line 59
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 62
    return-void
.end method
