.class final Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;
.super Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    sget-object v2, Lcom/android/settings_exlib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    sget-object v2, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->LeAudio:Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 137
    goto :goto_0

    .line 130
    :cond_3
    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x600

    if-eq v2, v3, :cond_2

    goto :goto_0
.end method
