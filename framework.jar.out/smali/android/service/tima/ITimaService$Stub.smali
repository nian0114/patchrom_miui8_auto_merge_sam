.class public abstract Landroid/service/tima/ITimaService$Stub;
.super Landroid/os/Binder;
.source "ITimaService.java"

# interfaces
.implements Landroid/service/tima/ITimaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tima/ITimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.tima.ITimaService"

.field static final TRANSACTION_DCMSelfCheck:I = 0x2d

.field static final TRANSACTION_FipsKeyStore3_del:I = 0x29

.field static final TRANSACTION_FipsKeyStore3_exist:I = 0x26

.field static final TRANSACTION_FipsKeyStore3_get:I = 0x27

.field static final TRANSACTION_FipsKeyStore3_getmtime:I = 0x28

.field static final TRANSACTION_FipsKeyStore3_init:I = 0x24

.field static final TRANSACTION_FipsKeyStore3_put:I = 0x25

.field static final TRANSACTION_FipsKeyStore3_saw:I = 0x2a

.field static final TRANSACTION_KeyStore3_del:I = 0x11

.field static final TRANSACTION_KeyStore3_exist:I = 0xe

.field static final TRANSACTION_KeyStore3_get:I = 0xf

.field static final TRANSACTION_KeyStore3_getmtime:I = 0x10

.field static final TRANSACTION_KeyStore3_init:I = 0xc

.field static final TRANSACTION_KeyStore3_put:I = 0xd

.field static final TRANSACTION_KeyStore3_saw:I = 0x12

.field static final TRANSACTION_attestation:I = 0xa

.field static final TRANSACTION_ccmRegisterForDefaultCertificate:I = 0x14

.field static final TRANSACTION_checkEvent:I = 0x1

.field static final TRANSACTION_checkHistory:I = 0x2

.field static final TRANSACTION_displayEvent:I = 0x3

.field static final TRANSACTION_dumpLog:I = 0x15

.field static final TRANSACTION_getDeviceID:I = 0xb

.field static final TRANSACTION_getEventList:I = 0x4

.field static final TRANSACTION_getTimaVersion:I = 0x13

.field static final TRANSACTION_getTuiVersion:I = 0x1d

.field static final TRANSACTION_isKapEnforced:I = 0x2c

.field static final TRANSACTION_keystoreInit:I = 0x6

.field static final TRANSACTION_keystoreInstallKey:I = 0x7

.field static final TRANSACTION_keystoreRetrieveKey:I = 0x8

.field static final TRANSACTION_keystoreShutdown:I = 0x9

.field static final TRANSACTION_launchTui:I = 0x18

.field static final TRANSACTION_launchTuiWithSecretId:I = 0x19

.field static final TRANSACTION_loadTui:I = 0x16

.field static final TRANSACTION_setISLCallback:I = 0x5

.field static final TRANSACTION_setKapMode:I = 0x2b

.field static final TRANSACTION_tuiDecryptPinHash:I = 0x22

.field static final TRANSACTION_tuiGetCerts:I = 0x20

.field static final TRANSACTION_tuiGetSecretDimension:I = 0x21

.field static final TRANSACTION_tuiInitSecret:I = 0x1a

.field static final TRANSACTION_tuiInitSecretFile:I = 0x1b

.field static final TRANSACTION_tuiInitSecretMemoryFile:I = 0x1c

.field static final TRANSACTION_tuiRegAppImage:I = 0x1e

.field static final TRANSACTION_tuiRegAppImageFile:I = 0x1f

.field static final TRANSACTION_unloadTui:I = 0x17

.field static final TRANSACTION_verifyCertChain:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p0, p0, v0}, Landroid/service/tima/ITimaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.service.tima.ITimaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/tima/ITimaService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/service/tima/ITimaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/tima/ITimaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->checkEvent(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->checkHistory(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->displayEvent(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->getEventList(I)Ljava/util/List;

    move-result-object v8

    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaISLCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaISLCallback;

    move-result-object v1

    .local v1, "_arg0":Landroid/service/tima/ITimaISLCallback;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Landroid/service/tima/ITimaISLCallback;
    :sswitch_6
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreInit()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":I
    :sswitch_7
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->keystoreInstallKey(I[B)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":I
    :sswitch_8
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->keystoreRetrieveKey(I)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":[B
    :sswitch_9
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreShutdown()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_a
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->attestation([BI)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[B
    :sswitch_b
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getDeviceID()[B

    move-result-object v6

    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v6    # "_result":[B
    :sswitch_c
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_init()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_d
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .local v4, "_arg3":[C
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[C
    .end local v6    # "_result":I
    :sswitch_e
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[C
    .end local v6    # "_result":[B
    :sswitch_10
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_11
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_del(Ljava/lang/String;I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v4, v9

    .local v4, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":I
    :cond_2
    move v4, v0

    goto :goto_1

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->dumpLog()[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v6    # "_result":[B
    :sswitch_16
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->loadTui()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_17
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->unloadTui()I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_18
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v3, v9

    .local v3, "_arg2":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->launchTui(Ljava/lang/String;[BZI)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v6    # "_result":[B
    :cond_3
    move v3, v0

    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    :sswitch_19
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v4, v9

    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/tima/ITimaService$Stub;->launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B

    move-result-object v6

    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":[B
    :cond_4
    move v4, v0

    goto :goto_3

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    :sswitch_1a
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1b
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1c
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_1d
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getTuiVersion()Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->tuiRegAppImage(Ljava/lang/String;[B)[I

    move-result-object v6

    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":[I
    :sswitch_1f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":[I
    :sswitch_20
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->tuiGetCerts()[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v6    # "_result":[B
    :sswitch_21
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->tuiGetSecretDimension()[I

    move-result-object v6

    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .end local v6    # "_result":[I
    :sswitch_22
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->tuiDecryptPinHash(Ljava/lang/String;[B)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":[B
    :sswitch_23
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->verifyCertChain([B)[B

    move-result-object v6

    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v6    # "_result":[B
    :sswitch_24
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v1, v9

    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_init(Z)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_6
    move v1, v0

    goto :goto_5

    :sswitch_25
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .local v4, "_arg3":[C
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[C
    .end local v6    # "_result":I
    :sswitch_26
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_exist(Ljava/lang/String;I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    move v0, v9

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_27
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[C
    .end local v6    # "_result":[B
    :sswitch_28
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_29
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_del(Ljava/lang/String;I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_2a
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_2b
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v1, v9

    .local v1, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v2, v9

    .local v2, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->setKapMode(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_9
    move v1, v0

    goto :goto_6

    .restart local v1    # "_arg0":Z
    :cond_a
    move v2, v0

    goto :goto_7

    .end local v1    # "_arg0":Z
    :sswitch_2c
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->isKapEnforced()Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":Z
    :sswitch_2d
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->DCMSelfCheck()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
