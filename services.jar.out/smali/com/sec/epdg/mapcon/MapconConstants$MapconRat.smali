.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconRat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "IWLAN"

    const/16 v2, 0x12

    const-string v3, "IWLAN"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "LTE"

    const/16 v2, 0xd

    const-string v3, "LTE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "EHRPD"

    const/16 v2, 0xe

    const-string v3, "EHRPD"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "CS"

    const/16 v2, 0x63

    const-string v3, "CS"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->mValue:I

    iput-object p4, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->mText:Ljava/lang/String;

    return-void
.end method

.method public static getMapconRat(I)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 5
    .param p0, "value"    # I

    .prologue
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->toInt()I

    move-result v4

    if-ne p0, v4, :cond_0

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :goto_1
    return-object v3

    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    goto :goto_1
.end method

.method public static getMapconRat(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :goto_1
    return-object v3

    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    goto :goto_1
.end method

.method public static final isCsPreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_3

    const-string v5, "[MAPCON]"

    const-string v7, "isCsPreceedsIwlan - meet CS first"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_4

    const-string v6, "[MAPCON]"

    const-string v7, "isCsPreceedsIwlan - meet IWLAN first"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_5
    const-string v5, "[MAPCON]"

    const-string v7, "isCsPreceedsIwlan - No WLAN"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0
.end method

.method public static final isIwlanAllowedType([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 6
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const-class v5, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_1
    sget-object v5, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public static final isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 7
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static final isIwlanPreceedsCs([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_3

    const-string v6, "[MAPCON]"

    const-string v7, "isIwlanPreceedsCs - meet CS first"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_4

    const-string v5, "[MAPCON]"

    const-string v7, "isIwlanPreceedsCs - meet IWLAN first"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_5
    const-string v5, "[MAPCON]"

    const-string v7, "isIwlanPreceedsCs - No CS"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0
.end method

.method public static final isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 9
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    aget-object v7, p0, v5

    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->ordinal()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public static final isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 7
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    sget-object v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static final isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .locals 9
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, p0, v5

    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->ordinal()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->mText:Ljava/lang/String;

    return-object v0
.end method
