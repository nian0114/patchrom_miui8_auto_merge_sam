.class public final enum Lcom/sec/epdg/IWlanEnum$IdentityType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IdentityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field public static final enum USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "IPV4_ADDR"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "IPV6_ADDR"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "FQDN"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "USER_FQDN"

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "DN"

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    const-string v1, "KEY_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IdentityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IdentityType;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$IdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method
