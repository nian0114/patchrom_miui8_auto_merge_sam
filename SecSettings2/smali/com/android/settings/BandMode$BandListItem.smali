.class Lcom/android/settings_ex/BandMode$BandListItem;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandListItem"
.end annotation


# instance fields
.field private mBandMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bm"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    .line 102
    iput p1, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    .line 103
    return-void
.end method


# virtual methods
.method public getBand()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    # getter for: Lcom/android/settings_ex/BandMode;->BAND_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Band mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    # getter for: Lcom/android/settings_ex/BandMode;->BAND_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    aget-object v0, v0, v1

    goto :goto_0
.end method
