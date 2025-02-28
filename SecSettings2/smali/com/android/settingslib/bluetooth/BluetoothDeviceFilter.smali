.class public final Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method public static getFilter(I)Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .param p0, "filterType"    # I

    .prologue
    .line 77
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    .line 81
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
