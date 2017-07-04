.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NUM_INSTR:I


# instance fields
.field private mCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1849
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 1856
    return-void
.end method


# virtual methods
.method public collect()Z
    .locals 2

    .prologue
    .line 1880
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 1881
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public globalMethodInvocations()I
    .locals 3

    .prologue
    .line 1907
    const/4 v0, 0x0

    .line 1909
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_1

    .line 1910
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1911
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1909
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1915
    :cond_1
    return v0
.end method

.method public globalTotal()I
    .locals 3

    .prologue
    .line 1893
    const/4 v0, 0x0

    .line 1895
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_0

    .line 1896
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1899
    :cond_0
    return v0
.end method

.method public resetAndStart()Z
    .locals 2

    .prologue
    .line 1866
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 1867
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_0
.end method
