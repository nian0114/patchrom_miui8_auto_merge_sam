.class final Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
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
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "deviceAlias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_0

    move v4, v10

    .local v4, "isAvailable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_1

    move v5, v10

    .local v5, "canConnect":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2

    move v6, v10

    .local v6, "isRemembered":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "deviceType":Ljava/lang/String;
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .local v0, "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "devInfo":I
    invoke-virtual {v0, v8}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_3

    move v9, v10

    .local v9, "isEmptySurface":Z
    :goto_3
    invoke-virtual {v0, v9}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    return-object v0

    .end local v0    # "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "isAvailable":Z
    .end local v5    # "canConnect":Z
    .end local v6    # "isRemembered":Z
    .end local v7    # "deviceType":Ljava/lang/String;
    .end local v8    # "devInfo":I
    .end local v9    # "isEmptySurface":Z
    :cond_0
    move v4, v11

    goto :goto_0

    .restart local v4    # "isAvailable":Z
    :cond_1
    move v5, v11

    goto :goto_1

    .restart local v5    # "canConnect":Z
    :cond_2
    move v6, v11

    goto :goto_2

    .restart local v0    # "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "isRemembered":Z
    .restart local v7    # "deviceType":Ljava/lang/String;
    .restart local v8    # "devInfo":I
    :cond_3
    move v9, v11

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "size"    # I

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method
