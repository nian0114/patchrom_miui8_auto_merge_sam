.class public enum Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
.super Ljava/lang/Enum;
.source "InterruptModeContextList.java"

# interfaces
.implements Lcom/samsung/android/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/InterruptModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "InterruptModeContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;",
        ">;",
        "Lcom/samsung/android/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;

    const-string v1, "SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    sget-object v1, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/InterruptModeContextList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/samsung/android/contextaware/InterruptModeContextList$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
