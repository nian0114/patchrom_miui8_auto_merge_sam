.class final enum Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PolicyUpdateReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$PolicyUpdateReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "ROAMING_CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "VOWIFI_SETTING_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "BOOTUP_CHECKING"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "VOLTE_SETTING_CHANGED"

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->$VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->$VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    return-object v0
.end method
