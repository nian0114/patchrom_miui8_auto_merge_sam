.class public Lmf/org/apache/xerces/dom/events/UIEventImpl;
.super Lmf/org/apache/xerces/dom/events/EventImpl;
.source "UIEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/UIEvent;


# instance fields
.field private fDetail:I

.field private fView:Lmf/org/w3c/dom/views/AbstractView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/EventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/events/UIEventImpl;->fDetail:I

    return v0
.end method

.method public getView()Lmf/org/w3c/dom/views/AbstractView;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/UIEventImpl;->fView:Lmf/org/w3c/dom/views/AbstractView;

    return-object v0
.end method

.method public initUIEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;I)V
    .locals 0
    .param p1, "typeArg"    # Ljava/lang/String;
    .param p2, "canBubbleArg"    # Z
    .param p3, "cancelableArg"    # Z
    .param p4, "viewArg"    # Lmf/org/w3c/dom/views/AbstractView;
    .param p5, "detailArg"    # I

    .prologue
    iput-object p4, p0, Lmf/org/apache/xerces/dom/events/UIEventImpl;->fView:Lmf/org/w3c/dom/views/AbstractView;

    iput p5, p0, Lmf/org/apache/xerces/dom/events/UIEventImpl;->fDetail:I

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method
