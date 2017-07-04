.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x17

.field static final TRANSACTION_cancelDiscovery:I = 0x10

.field static final TRANSACTION_clearAutoConnDevice:I = 0x54

.field static final TRANSACTION_configHciSnoopLog:I = 0x40

.field static final TRANSACTION_configHciSnoopLogForExternal:I = 0x61

.field static final TRANSACTION_configScoLoopback:I = 0x2e

.field static final TRANSACTION_connectSocket:I = 0x3a

.field static final TRANSACTION_controlTxPower:I = 0x2f

.field static final TRANSACTION_createBond:I = 0x16

.field static final TRANSACTION_createBondOutOfBandEx:I = 0x5e

.field static final TRANSACTION_createOutOfBandData:I = 0x5c

.field static final TRANSACTION_createSocketChannel:I = 0x3b

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_dump:I = 0x58

.field static final TRANSACTION_dutModeConfigure:I = 0x28

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x41

.field static final TRANSACTION_fetchRemoteUuids:I = 0x21

.field static final TRANSACTION_getActivityEnergyInfoFromController:I = 0x48

.field static final TRANSACTION_getAdapterConnectionState:I = 0x12

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x19

.field static final TRANSACTION_getBondedDevices:I = 0x15

.field static final TRANSACTION_getConnectionState:I = 0x1a

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getGearIsConnected:I = 0x4f

.field static final TRANSACTION_getGearManagerName:I = 0x4e

.field static final TRANSACTION_getHighRssi:I = 0x53

.field static final TRANSACTION_getLeDeviceType:I = 0x4d

.field static final TRANSACTION_getLowRssi:I = 0x51

.field static final TRANSACTION_getMessageAccessPermission:I = 0x32

.field static final TRANSACTION_getMidRssi:I = 0x52

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x30

.field static final TRANSACTION_getProfileConnectedDevice:I = 0x14

.field static final TRANSACTION_getProfileConnectionState:I = 0x13

.field static final TRANSACTION_getRemoteAlias:I = 0x1d

.field static final TRANSACTION_getRemoteAppearance:I = 0x4c

.field static final TRANSACTION_getRemoteClass:I = 0x1f

.field static final TRANSACTION_getRemoteName:I = 0x1b

.field static final TRANSACTION_getRemoteType:I = 0x1c

.field static final TRANSACTION_getRemoteUuids:I = 0x20

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x34

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x47

.field static final TRANSACTION_isAoBleSupported:I = 0x4a

.field static final TRANSACTION_isBLEAutoconnectSupport:I = 0x4b

.field static final TRANSACTION_isDiscovering:I = 0x11

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x43

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x45

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x46

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x44

.field static final TRANSACTION_isProfileStarted:I = 0x62

.field static final TRANSACTION_isScmstSupported:I = 0x3d

.field static final TRANSACTION_isSinkServiceSupported:I = 0x3e

.field static final TRANSACTION_leTestMode:I = 0x29

.field static final TRANSACTION_monitorRawRssi:I = 0x27

.field static final TRANSACTION_onBrEdrDown:I = 0x5b

.field static final TRANSACTION_onLeServiceUp:I = 0x59

.field static final TRANSACTION_onLeServiceUpQuietMode:I = 0x5a

.field static final TRANSACTION_readOutOfBandDataEx:I = 0x5d

.field static final TRANSACTION_readRawRssi:I = 0x26

.field static final TRANSACTION_registerCallback:I = 0x38

.field static final TRANSACTION_removeBond:I = 0x18

.field static final TRANSACTION_reportActivityInfo:I = 0x49

.field static final TRANSACTION_sdpSearch:I = 0x22

.field static final TRANSACTION_selectstream:I = 0x3f

.field static final TRANSACTION_sendCallerInfo:I = 0x60

.field static final TRANSACTION_sendConnectionStateChange:I = 0x37

.field static final TRANSACTION_sendRawHci:I = 0x36

.field static final TRANSACTION_setConnectionScanParameter:I = 0x56

.field static final TRANSACTION_setDeviceOutOfBandDataEx:I = 0x5f

.field static final TRANSACTION_setDeviceTypeAndDmtSupport:I = 0x55

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setEdrRxFrequency:I = 0x2c

.field static final TRANSACTION_setEdrTestEnd:I = 0x2d

.field static final TRANSACTION_setEdrTxFrequency:I = 0x2b

.field static final TRANSACTION_setManufacturerData:I = 0xe

.field static final TRANSACTION_setMessageAccessPermission:I = 0x33

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x25

.field static final TRANSACTION_setPasskey:I = 0x24

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x31

.field static final TRANSACTION_setPin:I = 0x23

.field static final TRANSACTION_setRPAGeneration:I = 0x57

.field static final TRANSACTION_setRemoteAlias:I = 0x1e

.field static final TRANSACTION_setRemoteClass:I = 0x42

.field static final TRANSACTION_setRfcommConnected:I = 0x50

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setScmstContentProtection:I = 0x3c

.field static final TRANSACTION_setSimAccessPermission:I = 0x35

.field static final TRANSACTION_sspDebugConfigure:I = 0x2a

.field static final TRANSACTION_startDiscovery:I = 0xf

.field static final TRANSACTION_unregisterCallback:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 47
    :sswitch_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v6

    .line 54
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .line 60
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v6

    .line 62
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v6    # "_result":I
    :sswitch_3
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v6

    .line 70
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v6

    .line 78
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v6

    .line 86
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 102
    .local v6, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 108
    .end local v6    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v6

    .line 112
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v6

    .line 128
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v6    # "_result":I
    :sswitch_b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v6

    .line 140
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v6

    .line 148
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v6    # "_result":I
    :sswitch_d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v6

    .line 158
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setManufacturerData()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    :sswitch_f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v6

    .line 173
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v6

    .line 181
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v6

    .line 189
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v6

    .line 197
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v6    # "_result":I
    :sswitch_13
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v6

    .line 207
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_14
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 217
    .local v6, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v6, :cond_a

    .line 219
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {v6, p3, v7}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 223
    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_15
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 231
    .local v6, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 237
    .end local v6    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_16
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 246
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 248
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 254
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_17
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 262
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 263
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 269
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_18
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 272
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 277
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 278
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v6, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 284
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 287
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 292
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 293
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 299
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 302
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 307
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 308
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 314
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 317
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 322
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Ljava/lang/String;
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 329
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 332
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 337
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 338
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 344
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 347
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 352
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Ljava/lang/String;
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 359
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 362
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 368
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v6

    .line 370
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v6, :cond_16

    move v8, v7

    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 376
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 384
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 385
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 382
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 391
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 394
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 399
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 400
    .local v6, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 397
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":[Landroid/os/ParcelUuid;
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 406
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_21
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 409
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 414
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 415
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v6, :cond_1a

    move v8, v7

    :cond_1a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 421
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_22
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 424
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 430
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 431
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 436
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v6

    .line 437
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v6, :cond_1c

    move v8, v7

    :cond_1c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v6    # "_result":Z
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 434
    :cond_1e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_f

    .line 443
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_23
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 446
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 452
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v2, v7

    .line 454
    .local v2, "_arg1":Z
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 457
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v6

    .line 458
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v6, :cond_1f

    move v8, v7

    :cond_1f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":Z
    :cond_20
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    :cond_21
    move v2, v8

    .line 452
    goto :goto_11

    .line 464
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_24
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 467
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 473
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v2, v7

    .line 475
    .restart local v2    # "_arg1":Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 477
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 478
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v6

    .line 479
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v6, :cond_22

    move v8, v7

    :cond_22
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 470
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":Z
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    :cond_24
    move v2, v8

    .line 473
    goto :goto_13

    .line 485
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_25
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 488
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 494
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    move v2, v7

    .line 495
    .restart local v2    # "_arg1":Z
    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v6

    .line 496
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v6, :cond_25

    move v8, v7

    :cond_25
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 491
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    :cond_27
    move v2, v8

    .line 494
    goto :goto_15

    .line 502
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_26
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 505
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 510
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->readRawRssi(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 511
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v6, :cond_28

    move v8, v7

    :cond_28
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 508
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_29
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 517
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_27
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 520
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 526
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 530
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 531
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    move-result v6

    .line 532
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v6, :cond_2a

    move v8, v7

    :cond_2a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 523
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 538
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_28
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    move v1, v7

    .line 541
    .local v1, "_arg0":Z
    :goto_18
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dutModeConfigure(Z)Z

    move-result v6

    .line 542
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    if-eqz v6, :cond_2c

    move v8, v7

    :cond_2c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_2d
    move v1, v8

    .line 540
    goto :goto_18

    .line 548
    :sswitch_29
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->leTestMode(IIII)Z

    move-result v6

    .line 558
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v6, :cond_2e

    move v8, v7

    :cond_2e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 564
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :sswitch_2a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    move v1, v7

    .line 567
    .local v1, "_arg0":Z
    :goto_19
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->sspDebugConfigure(Z)Z

    move-result v6

    .line 568
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v6, :cond_2f

    move v8, v7

    :cond_2f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_30
    move v1, v8

    .line 566
    goto :goto_19

    .line 574
    :sswitch_2b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTxFrequency(II)Z

    move-result v6

    .line 580
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v6, :cond_31

    move v8, v7

    :cond_31
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 586
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_2c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 589
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setEdrRxFrequency(I)Z

    move-result v6

    .line 590
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v6, :cond_32

    move v8, v7

    :cond_32
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 596
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTestEnd()Z

    move-result v6

    .line 598
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    if-eqz v6, :cond_33

    move v8, v7

    :cond_33
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 604
    .end local v6    # "_result":Z
    :sswitch_2e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    move v1, v7

    .line 607
    .local v1, "_arg0":Z
    :goto_1a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configScoLoopback(Z)Z

    move-result v6

    .line 608
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v6, :cond_34

    move v8, v7

    :cond_34
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_35
    move v1, v8

    .line 606
    goto :goto_1a

    .line 614
    :sswitch_2f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    move v1, v7

    .line 617
    .restart local v1    # "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->controlTxPower(Z)Z

    move-result v6

    .line 618
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v6, :cond_36

    move v8, v7

    :cond_36
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_37
    move v1, v8

    .line 616
    goto :goto_1b

    .line 624
    :sswitch_30
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 627
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 632
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 633
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 630
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_38
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 639
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_31
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 642
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 648
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 649
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 650
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v6, :cond_39

    move v8, v7

    :cond_39
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 645
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 656
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_32
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 659
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 664
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 665
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 662
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 671
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_33
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 674
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 680
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 682
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v6, :cond_3c

    move v8, v7

    :cond_3c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 677
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_3d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .line 688
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_34
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 691
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 696
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 697
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 694
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 703
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_35
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    .line 706
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 712
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 713
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 714
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    if-eqz v6, :cond_3f

    move v8, v7

    :cond_3f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 709
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_40
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .line 720
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_36
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 726
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 727
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sendRawHci(I[BI)I

    move-result v6

    .line 728
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 734
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_37
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 737
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 743
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 745
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 747
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 748
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 740
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 754
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_38
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 757
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 763
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_39
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 766
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 772
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_3a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    .line 775
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 781
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 784
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 790
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 792
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 793
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 794
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    if-eqz v6, :cond_44

    .line 796
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    invoke-virtual {v6, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 778
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .line 787
    .restart local v2    # "_arg1":I
    :cond_43
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_24

    .line 800
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_44
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 806
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 810
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    .line 813
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 819
    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 821
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 822
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 823
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    if-eqz v6, :cond_46

    .line 825
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    invoke-virtual {v6, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 816
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_45
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_25

    .line 829
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_46
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 835
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    move v1, v7

    .line 838
    .local v1, "_arg0":Z
    :goto_26
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScmstContentProtection(Z)Z

    move-result v6

    .line 839
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    if-eqz v6, :cond_47

    move v8, v7

    :cond_47
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_48
    move v1, v8

    .line 837
    goto :goto_26

    .line 845
    :sswitch_3d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isScmstSupported()Z

    move-result v6

    .line 847
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    if-eqz v6, :cond_49

    move v8, v7

    :cond_49
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 853
    .end local v6    # "_result":Z
    :sswitch_3e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isSinkServiceSupported()Z

    move-result v6

    .line 855
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    if-eqz v6, :cond_4a

    move v8, v7

    :cond_4a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 861
    .end local v6    # "_result":Z
    :sswitch_3f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 864
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 869
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_27
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 870
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v6, :cond_4b

    move v8, v7

    :cond_4b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 867
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_4c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    .line 876
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_40
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    move v1, v7

    .line 879
    .local v1, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    move-result v6

    .line 880
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v6, :cond_4d

    move v8, v7

    :cond_4d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_4e
    move v1, v8

    .line 878
    goto :goto_28

    .line 886
    :sswitch_41
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v6

    .line 888
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v6, :cond_4f

    move v8, v7

    :cond_4f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 894
    .end local v6    # "_result":Z
    :sswitch_42
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    .line 897
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 903
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 904
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 905
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v6, :cond_50

    move v8, v7

    :cond_50
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 900
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_51
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    .line 911
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_43
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v6

    .line 913
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    if-eqz v6, :cond_52

    move v8, v7

    :cond_52
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 919
    .end local v6    # "_result":Z
    :sswitch_44
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    move-result v6

    .line 921
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v6, :cond_53

    move v8, v7

    :cond_53
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 927
    .end local v6    # "_result":Z
    :sswitch_45
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v6

    .line 929
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    if-eqz v6, :cond_54

    move v8, v7

    :cond_54
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 935
    .end local v6    # "_result":Z
    :sswitch_46
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v6

    .line 937
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v6, :cond_55

    move v8, v7

    :cond_55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 943
    .end local v6    # "_result":Z
    :sswitch_47
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v6

    .line 945
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v6, :cond_56

    move v8, v7

    :cond_56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 951
    .end local v6    # "_result":Z
    :sswitch_48
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getActivityEnergyInfoFromController()V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 958
    :sswitch_49
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v6

    .line 960
    .local v6, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    if-eqz v6, :cond_57

    .line 962
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    invoke-virtual {v6, p3, v7}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 966
    :cond_57
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 972
    .end local v6    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_4a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isAoBleSupported()I

    move-result v6

    .line 974
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 980
    .end local v6    # "_result":I
    :sswitch_4b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isBLEAutoconnectSupport()I

    move-result v6

    .line 982
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 988
    .end local v6    # "_result":I
    :sswitch_4c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    .line 991
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 996
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 997
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 994
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_58
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    .line 1003
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    .line 1006
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1011
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getLeDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 1012
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1009
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_59
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    .line 1018
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 1021
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1026
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGearManagerName(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 1027
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1024
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":[B
    :cond_5a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2c

    .line 1033
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 1036
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1041
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 1042
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v6, :cond_5b

    move v8, v7

    :cond_5b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1039
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    .line 1048
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_50
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 1051
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1057
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    move v2, v7

    .line 1058
    .local v2, "_arg1":Z
    :goto_2f
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1054
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    :cond_5d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    :cond_5e
    move v2, v8

    .line 1057
    goto :goto_2f

    .line 1064
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_51
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getLowRssi()I

    move-result v6

    .line 1066
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1072
    .end local v6    # "_result":I
    :sswitch_52
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getMidRssi()I

    move-result v6

    .line 1074
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1080
    .end local v6    # "_result":I
    :sswitch_53
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getHighRssi()I

    move-result v6

    .line 1082
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1088
    .end local v6    # "_result":I
    :sswitch_54
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->clearAutoConnDevice()V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1095
    :sswitch_55
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    .line 1098
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1104
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1106
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    move v3, v7

    .line 1107
    .local v3, "_arg2":Z
    :goto_31
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v6

    .line 1108
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    if-eqz v6, :cond_5f

    move v8, v7

    :cond_5f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1101
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v6    # "_result":Z
    :cond_60
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_30

    .restart local v2    # "_arg1":I
    :cond_61
    move v3, v8

    .line 1106
    goto :goto_31

    .line 1114
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    :sswitch_56
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1119
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setConnectionScanParameter(II)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1125
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_57
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    move v1, v7

    .line 1128
    .local v1, "_arg0":Z
    :goto_32
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRPAGeneration(Z)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_62
    move v1, v8

    .line 1127
    goto :goto_32

    .line 1134
    :sswitch_58
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    .line 1137
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1142
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_33
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dump(Landroid/os/ParcelFileDescriptor;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1140
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_63
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_33

    .line 1148
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_59
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1155
    :sswitch_5a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUpQuietMode()V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1162
    :sswitch_5b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1169
    :sswitch_5c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->createOutOfBandData()Z

    move-result v6

    .line 1171
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    if-eqz v6, :cond_64

    move v8, v7

    :cond_64
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1177
    .end local v6    # "_result":Z
    :sswitch_5d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandDataEx()Landroid/bluetooth/BluetoothOobData;

    move-result-object v6

    .line 1179
    .local v6, "_result":Landroid/bluetooth/BluetoothOobData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v6, :cond_65

    .line 1181
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    invoke-virtual {v6, p3, v7}, Landroid/bluetooth/BluetoothOobData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1185
    :cond_65
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1191
    .end local v6    # "_result":Landroid/bluetooth/BluetoothOobData;
    :sswitch_5e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    .line 1194
    sget-object v0, Landroid/bluetooth/BluetoothOobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothOobData;

    .line 1199
    .local v1, "_arg0":Landroid/bluetooth/BluetoothOobData;
    :goto_34
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBandEx(Landroid/bluetooth/BluetoothOobData;)Z

    move-result v6

    .line 1200
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v6, :cond_66

    move v8, v7

    :cond_66
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1197
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    .end local v6    # "_result":Z
    :cond_67
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    goto :goto_34

    .line 1206
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :sswitch_5f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    .line 1209
    sget-object v0, Landroid/bluetooth/BluetoothOobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothOobData;

    .line 1214
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :goto_35
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandDataEx(Landroid/bluetooth/BluetoothOobData;)Z

    move-result v6

    .line 1215
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    if-eqz v6, :cond_68

    move v8, v7

    :cond_68
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1212
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    .end local v6    # "_result":Z
    :cond_69
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    goto :goto_35

    .line 1221
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :sswitch_60
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->sendCallerInfo(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1230
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_61
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    move v1, v7

    .line 1233
    .local v1, "_arg0":Z
    :goto_36
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLogForExternal(Z)Z

    move-result v6

    .line 1234
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v6, :cond_6a

    move v8, v7

    :cond_6a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_6b
    move v1, v8

    .line 1232
    goto :goto_36

    .line 1240
    :sswitch_62
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isProfileStarted(Ljava/lang/String;)Z

    move-result v6

    .line 1244
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    if-eqz v6, :cond_6c

    move v8, v7

    :cond_6c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
