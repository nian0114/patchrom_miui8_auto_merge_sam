.class public final enum Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
.super Ljava/lang/Enum;
.source "TelecomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

.field public static final enum CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

.field public static final enum CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

.field public static final enum CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

.field public static final enum OTHERS:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    const-string v1, "CU"

    invoke-direct {v0, v1, v3}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    const-string v1, "CTC"

    invoke-direct {v0, v1, v4}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->OTHERS:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->OTHERS:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->$VALUES:[Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    return-object v0
.end method

.method public static values()[Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->$VALUES:[Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0}, [Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    return-object v0
.end method
