.class public abstract Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.super Ljava/lang/Object;
.source "TypeValidator.java"


# static fields
.field public static final EQUAL:S = 0x0s

.field public static final GREATER_THAN:S = 0x1s

.field public static final INDETERMINATE:S = 0x2s

.field public static final LESS_THAN:S = -0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation
.end method

.method public abstract getAllowedFacets()S
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFractionDigits(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getTotalDigits(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
