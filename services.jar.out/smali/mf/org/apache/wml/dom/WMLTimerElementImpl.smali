.class public Lmf/org/apache/wml/dom/WMLTimerElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLTimerElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLTimerElement;


# static fields
.field private static final serialVersionUID:J = 0x7dac0862788213d6L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTimerElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
