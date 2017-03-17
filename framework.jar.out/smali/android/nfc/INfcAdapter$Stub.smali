.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_NetworkResetAtt:I = 0x39

.field static final TRANSACTION_SetWcControl:I = 0x35

.field static final TRANSACTION_StartLedCover:I = 0x33

.field static final TRANSACTION_StopLedCover:I = 0x34

.field static final TRANSACTION_TransceiveLedCover:I = 0x32

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x24

.field static final TRANSACTION_changeRoutingTable:I = 0x17

.field static final TRANSACTION_closeSecNdefService:I = 0x1c

.field static final TRANSACTION_createSecNdefService:I = 0x1b

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableFilterCondition:I = 0x23

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_dispatch:I = 0x13

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableDisableSeTestMode:I = 0x27

.field static final TRANSACTION_enableFilterCondition:I = 0x22

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_enableSecNdef:I = 0x1f

.field static final TRANSACTION_getDefaultRoutingDestination:I = 0x29

.field static final TRANSACTION_getIdm:I = 0x38

.field static final TRANSACTION_getListenMode:I = 0x31

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getRwP2pState:I = 0x18

.field static final TRANSACTION_getSeSupportedTech:I = 0x37

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_invokeBeam:I = 0x11

.field static final TRANSACTION_invokeBeamInternal:I = 0x12

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_isSecNdefEnabled:I = 0x20

.field static final TRANSACTION_isSimLocked:I = 0xc

.field static final TRANSACTION_isTrustedPkg:I = 0x2c

.field static final TRANSACTION_pausePolling:I = 0xa

.field static final TRANSACTION_prepareSwitchedOffState:I = 0x1a

.field static final TRANSACTION_readerDisable:I = 0x2a

.field static final TRANSACTION_readerEnable:I = 0x2b

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x25

.field static final TRANSACTION_resumePolling:I = 0xb

.field static final TRANSACTION_sendSecDefaultNdefMsg:I = 0x1e

.field static final TRANSACTION_sendSecNdefMsg:I = 0x1d

.field static final TRANSACTION_setAppCallback:I = 0xf

.field static final TRANSACTION_setDefaultRoutingDestination:I = 0x28

.field static final TRANSACTION_setFilterList:I = 0x21

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setHciEventCallback:I = 0x36

.field static final TRANSACTION_setLedCoverCallback:I = 0x10

.field static final TRANSACTION_setListenMode:I = 0x30

.field static final TRANSACTION_setListenMode2:I = 0x16

.field static final TRANSACTION_setP2pModes:I = 0x15

.field static final TRANSACTION_setReaderMode:I = 0x14

.field static final TRANSACTION_setRwP2pMode:I = 0x19

.field static final TRANSACTION_setSimLocked:I = 0xd

.field static final TRANSACTION_startCoverAuth:I = 0x2d

.field static final TRANSACTION_stopCoverAuth:I = 0x2f

.field static final TRANSACTION_transceiveAuthData:I = 0x2e

.field static final TRANSACTION_verifyNfcPermission:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 620
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v13

    .line 53
    .local v13, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 59
    .end local v13    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v13

    .line 61
    .local v13, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 67
    .end local v13    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v13

    .line 71
    .local v13, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 77
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v13

    .line 79
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v13    # "_result":I
    :sswitch_5
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 88
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v13

    .line 89
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 87
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 90
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 95
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_6
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v13

    .line 97
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 103
    .end local v13    # "_result":Z
    :sswitch_7
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v13

    .line 105
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v13, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 106
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 111
    .end local v13    # "_result":Z
    :sswitch_8
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v13

    .line 113
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 114
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 119
    .end local v13    # "_result":Z
    :sswitch_9
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v13

    .line 121
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 122
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 127
    .end local v13    # "_result":Z
    :sswitch_a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 136
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 143
    :sswitch_c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSimLocked()Z

    move-result v13

    .line 145
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 146
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 151
    .end local v13    # "_result":Z
    :sswitch_d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 154
    .local v2, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setSimLocked(Z)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    .end local v2    # "_arg0":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 160
    :sswitch_e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 163
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 169
    .local v2, "_arg0":Landroid/app/PendingIntent;
    :goto_c
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 171
    .local v3, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 172
    sget-object v1, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .line 177
    .local v4, "_arg2":Landroid/nfc/TechListParcel;
    :goto_d
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 166
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v4    # "_arg2":Landroid/nfc/TechListParcel;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_c

    .line 175
    .restart local v3    # "_arg1":[Landroid/content/IntentFilter;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_d

    .line 183
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v4    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 192
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_10
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setLedCoverCallback(Landroid/nfc/IAppCallback;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_11
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 203
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 207
    :sswitch_12
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 210
    sget-object v1, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/BeamShareData;

    .line 215
    .local v2, "_arg0":Landroid/nfc/BeamShareData;
    :goto_e
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 213
    .end local v2    # "_arg0":Landroid/nfc/BeamShareData;
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_e

    .line 220
    .end local v2    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_13
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 223
    sget-object v1, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 228
    .local v2, "_arg0":Landroid/nfc/Tag;
    :goto_f
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 226
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/Tag;
    goto :goto_f

    .line 234
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :sswitch_14
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v3

    .line 240
    .local v3, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 243
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 248
    .local v5, "_arg3":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 246
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/Bundle;
    goto :goto_10

    .line 254
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_15
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 259
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_16
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 269
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setListenMode2(Landroid/os/IBinder;I)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_17
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 280
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "_arg3":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object v1, p0

    .line 287
    invoke-virtual/range {v1 .. v6}, Landroid/nfc/INfcAdapter$Stub;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_18
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getRwP2pState()I

    move-result v13

    .line 295
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 301
    .end local v13    # "_result":I
    :sswitch_19
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    .line 304
    .local v2, "_arg0":Z
    :goto_11
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setRwP2pMode(Z)Z

    move-result v13

    .line 305
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v13, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 306
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 311
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_1a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->prepareSwitchedOffState()V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 318
    :sswitch_1b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 328
    .local v5, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .local v12, "_arg4":[B
    move-object v7, p0

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 329
    invoke-virtual/range {v7 .. v12}, Landroid/nfc/INfcAdapter$Stub;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I

    move-result v13

    .line 330
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 336
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[B
    .end local v12    # "_arg4":[B
    .end local v13    # "_result":I
    :sswitch_1c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->closeSecNdefService(I)I

    move-result v13

    .line 340
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 346
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_1d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 351
    sget-object v1, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 356
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    :goto_13
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->sendSecNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v13

    .line 357
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v13    # "_result":I
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_13

    .line 363
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_1e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 366
    sget-object v1, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 371
    .local v2, "_arg0":Landroid/nfc/NdefMessage;
    :goto_14
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->sendSecDefaultNdefMsg(Landroid/nfc/NdefMessage;)I

    move-result v13

    .line 372
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 369
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    .end local v13    # "_result":I
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/NdefMessage;
    goto :goto_14

    .line 378
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    :sswitch_1f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    .line 381
    .local v2, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->enableSecNdef(Z)Z

    move-result v13

    .line 382
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v13, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 380
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 383
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 388
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_20
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSecNdefEnabled()Z

    move-result v13

    .line 390
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v13, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 391
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 396
    .end local v13    # "_result":Z
    :sswitch_21
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 399
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setFilterList([B)Z

    move-result v13

    .line 400
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v13, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 401
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 406
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":Z
    :sswitch_22
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 409
    .local v2, "_arg0":B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->enableFilterCondition(B)Z

    move-result v13

    .line 410
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v13, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 411
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 416
    .end local v2    # "_arg0":B
    .end local v13    # "_result":Z
    :sswitch_23
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 419
    .restart local v2    # "_arg0":B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disableFilterCondition(B)Z

    move-result v13

    .line 420
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v13, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 421
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 426
    .end local v2    # "_arg0":B
    .end local v13    # "_result":Z
    :sswitch_24
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 430
    .local v2, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 431
    .local v3, "_arg1":[I
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 437
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v3    # "_arg1":[I
    :sswitch_25
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 440
    .restart local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 446
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_26
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 453
    :sswitch_27
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v3, 0x1

    .line 458
    .local v3, "_arg1":Z
    :goto_1b
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 457
    .end local v3    # "_arg1":Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 464
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 481
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v13

    .line 483
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 484
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 489
    .end local v13    # "_result":Z
    :sswitch_2b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v13

    .line 491
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v13, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 492
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 497
    .end local v13    # "_result":Z
    :sswitch_2c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 503
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v13, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 504
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_2d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->startCoverAuth()[B

    move-result-object v13

    .line 511
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 513
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 517
    .end local v13    # "_result":[B
    :sswitch_2e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 520
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v13

    .line 521
    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 523
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 527
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":[B
    :sswitch_2f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->stopCoverAuth()Z

    move-result v13

    .line 529
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v13, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 530
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 535
    .end local v13    # "_result":Z
    :sswitch_30
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setListenMode(I)I

    move-result v13

    .line 539
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 545
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_31
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getListenMode()I

    move-result v13

    .line 547
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 553
    .end local v13    # "_result":I
    :sswitch_32
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 556
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->TransceiveLedCover([B)[B

    move-result-object v13

    .line 557
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 559
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 563
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":[B
    :sswitch_33
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->StartLedCover()[B

    move-result-object v13

    .line 565
    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 567
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 571
    .end local v13    # "_result":[B
    :sswitch_34
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->StopLedCover()Z

    move-result v13

    .line 573
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v13, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 574
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 579
    .end local v13    # "_result":Z
    :sswitch_35
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 582
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->SetWcControl(I)Z

    move-result v13

    .line 583
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v13, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 584
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 589
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_36
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcHciEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcHciEventCallback;

    move-result-object v2

    .line 592
    .local v2, "_arg0":Landroid/nfc/INfcHciEventCallback;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setHciEventCallback(Landroid/nfc/INfcHciEventCallback;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Landroid/nfc/INfcHciEventCallback;
    :sswitch_37
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSeSupportedTech()I

    move-result v13

    .line 600
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 606
    .end local v13    # "_result":I
    :sswitch_38
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getIdm()Ljava/lang/String;

    move-result-object v13

    .line 608
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 614
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->NetworkResetAtt()V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
