.class public Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
.super Lmf/org/apache/xerces/xni/XNIException;
.source "XMLConfigurationException.java"


# static fields
.field public static final NOT_RECOGNIZED:S = 0x0s

.field public static final NOT_SUPPORTED:S = 0x1s

.field static final serialVersionUID:J = -0x4b759f6a6c09bcc4L


# instance fields
.field protected fIdentifier:Ljava/lang/String;

.field protected fType:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # S
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # S
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    iget-short v0, p0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    return v0
.end method
