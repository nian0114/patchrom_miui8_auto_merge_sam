.class public Lcom/gsma/services/nfc/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategory:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "AidGroup"

    sput-object v0, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    .line 157
    new-instance v0, Lcom/gsma/services/nfc/AidGroup$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/AidGroup$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private isValidAid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 83
    sget-object v1, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 87
    sget-object v1, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "[0-9A-Fa-f]{10,32}\\*?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    sget-object v1, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addNewAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "Aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/AidGroup;->isValidAid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An illegal or inappropriate argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 120
    :goto_0
    return v3

    .line 101
    :cond_0
    if-nez p1, :cond_1

    move v3, v5

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    instance-of v3, p1, Lcom/gsma/services/nfc/AidGroup;

    if-nez v3, :cond_2

    move v3, v5

    .line 104
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/gsma/services/nfc/AidGroup;

    .line 106
    .local v0, "g":Lcom/gsma/services/nfc/AidGroup;
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    move v3, v5

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 110
    .local v2, "size":I
    if-lez v2, :cond_5

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 112
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 113
    goto :goto_0

    .line 111
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v5

    .line 119
    goto :goto_0

    :cond_7
    move v3, v4

    .line 120
    goto :goto_0
.end method

.method public getAids()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    return-object v0

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 71
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 73
    new-array v0, v2, [Ljava/lang/String;

    .line 74
    .local v0, "aids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "Aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/AidGroup;->isValidAid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An illegal or inappropriate argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    :cond_0
    return-void
.end method
