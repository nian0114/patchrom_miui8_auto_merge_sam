.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;
.super Ljava/lang/Object;
.source "DualScreenUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DualScreenUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1
    .param p0, "displayId"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public static getCoupledTaskFlags()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    return v0
.end method

.method public static getSystemWindowLayer()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .local v0, "FIRST_SYSTEM_WINDOW_LAYER":I
    const/16 v1, 0x2710

    .local v1, "TYPE_LAYER_MULTIPLIER":I
    const/16 v2, 0x3e8

    .local v2, "TYPE_LAYER_OFFSET":I
    const v3, 0xa028

    .local v3, "systemWindowBaseLayer":I
    return v3
.end method

.method public static hasCoupledTaskFlags(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualScreen(I)Z
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
