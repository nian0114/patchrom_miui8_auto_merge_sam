.class public final enum Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
.super Ljava/lang/Enum;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTimers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgTimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgTimers$EpdgTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;


# instance fields
.field private final mCommand:I

.field private final mText:Ljava/lang/String;

.field private final mTimerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v1, "NOTDEFINED"

    const-string v5, "NOTDEFINED"

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG"

    const/16 v7, 0x38

    const-string v8, "TEPDG"

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGLTE"

    const/16 v7, 0x39

    const-string v8, "TEPDGLTE"

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG1X"

    const/16 v7, 0x3b

    const-string v8, "TEPDG1X"

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGHODELAYWIFI"

    const/16 v7, 0x3a

    const-string v8, "HODELAYWIFI"

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGHODELAY"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/16 v7, 0x3c

    const-string v8, "HODELAY"

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG1XSCANNING"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const/16 v7, 0x41

    const-string v8, "TEPDG1XSCANNING"

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGWIFIRSSIDELAY"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/16 v7, 0x48

    const-string v8, "WIFIRSSIDELAY"

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGWIFIIPCONFIG"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x4d

    const-string v8, "TEPDGWIFIIPCONFIG"

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->$VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "command"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mTimerId:I

    iput p4, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mCommand:I

    iput-object p5, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mText:Ljava/lang/String;

    return-void
.end method

.method public static getTimerCommand(I)I
    .locals 5
    .param p0, "id"    # I

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->values()[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v4

    if-ne p0, v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerCommand()I

    move-result v4

    .end local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :goto_1
    return v4

    .restart local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->$VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method


# virtual methods
.method public getTimerCommand()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mCommand:I

    return v0
.end method

.method public getTimerId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mTimerId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mText:Ljava/lang/String;

    return-object v0
.end method
