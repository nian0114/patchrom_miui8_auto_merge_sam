.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$SourceTechnologies;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSmallestDisplacementMeters:F

.field private volatile mSourcesToUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 28
    iput v2, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 29
    iput v2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public getPeriodInNS()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return v0
.end method

.method public getSourcesToUse()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 97
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceToUseSet(I)Z
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 81
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 93
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 94
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 77
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 78
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 89
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 90
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 50
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 58
    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 65
    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 66
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 73
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    const-string v0, ""

    .line 39
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FusedBatchOptions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "period(ns) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    return-void
.end method
