.class public Lcom/android/server/am/DualScreenAttrs;
.super Ljava/lang/Object;
.source "DualScreenAttrs.java"


# static fields
.field public static final DUAL_SCREEN_OBSCURED_ZONES:[I

.field public static final DUAL_SCREEN_OBSCURED_ZONE_FULL:I = 0x3

.field public static final DUAL_SCREEN_OBSCURED_ZONE_MAIN:I = 0x1

.field public static final DUAL_SCREEN_OBSCURED_ZONE_SUB:I = 0x2

.field public static final DUAL_SCREEN_OBSCURED_ZONE_UNKNOWN:I

.field public static sConstDefaultDualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;


# instance fields
.field private mFinishFlag:I

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field private mStopFlag:I

.field public triggerActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/DualScreenAttrs;->DUAL_SCREEN_OBSCURED_ZONES:[I

    .line 100
    new-instance v0, Lcom/android/server/am/DualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/DualScreenAttrs;-><init>()V

    sput-object v0, Lcom/android/server/am/DualScreenAttrs;->sConstDefaultDualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    return-void

    .line 14
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p0, v0}, Lcom/android/server/am/DualScreenAttrs;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DualScreenAttrs;)V
    .locals 1
    .param p1, "attrs"    # Lcom/android/server/am/DualScreenAttrs;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/DualScreenAttrs;->setTo(Lcom/android/server/am/DualScreenAttrs;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "targetScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/am/DualScreenAttrs;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addFinishFlag(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    sget-object v1, Lcom/android/server/am/DualScreenAttrs;->DUAL_SCREEN_OBSCURED_ZONES:[I

    aget v1, v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    .line 75
    return-void
.end method

.method public addStopFlag(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    sget-object v1, Lcom/android/server/am/DualScreenAttrs;->DUAL_SCREEN_OBSCURED_ZONES:[I

    aget v1, v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    .line 63
    return-void
.end method

.method public clearFinishFlag()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    .line 79
    return-void
.end method

.method public clearStopFlag()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    .line 67
    return-void
.end method

.method public equals(Lcom/android/server/am/DualScreenAttrs;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/DualScreenAttrs;

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/am/DualScreenAttrs;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/DualScreenAttrs;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public okToFinish()Z
    .locals 3

    .prologue
    .line 82
    iget v0, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    sget-object v1, Lcom/android/server/am/DualScreenAttrs;->DUAL_SCREEN_OBSCURED_ZONES:[I

    invoke-virtual {p0}, Lcom/android/server/am/DualScreenAttrs;->getDisplayId()I

    move-result v2

    aget v1, v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public okToStop()Z
    .locals 3

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    sget-object v1, Lcom/android/server/am/DualScreenAttrs;->DUAL_SCREEN_OBSCURED_ZONES:[I

    invoke-virtual {p0}, Lcom/android/server/am/DualScreenAttrs;->getDisplayId()I

    move-result v2

    aget v1, v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "targetScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/am/DualScreenAttrs;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 36
    return-void
.end method

.method public setTo(Lcom/android/server/am/DualScreenAttrs;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/DualScreenAttrs;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/DualScreenAttrs;->setTo(Lcom/android/server/am/DualScreenAttrs;Z)V

    .line 52
    return-void
.end method

.method public setTo(Lcom/android/server/am/DualScreenAttrs;Z)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/DualScreenAttrs;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/DualScreenAttrs;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v1, "{mTargetScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DualScreenAttrs;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "(#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DualScreenAttrs;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    if-lez v1, :cond_0

    .line 91
    const-string v1, ", mStopFlag=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/DualScreenAttrs;->mStopFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    iget v1, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    if-lez v1, :cond_1

    .line 94
    const-string v1, ", mFinishFlag=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/DualScreenAttrs;->mFinishFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
