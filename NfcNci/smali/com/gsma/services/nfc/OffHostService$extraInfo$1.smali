.class final Lcom/gsma/services/nfc/OffHostService$extraInfo$1;
.super Ljava/lang/Object;
.source "OffHostService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/OffHostService$extraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/gsma/services/nfc/OffHostService$extraInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "virtualClassName":Ljava/lang/String;
    new-instance v4, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/gsma/services/nfc/OffHostService$extraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/OffHostService$extraInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 444
    new-array v0, p1, [Lcom/gsma/services/nfc/OffHostService$extraInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/OffHostService$extraInfo$1;->newArray(I)[Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    return-object v0
.end method
