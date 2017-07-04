.class public abstract Landroid/spay/ITAController$Stub;
.super Landroid/os/Binder;
.source "ITAController.java"

# interfaces
.implements Landroid/spay/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/ITAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/ITAController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.spay.ITAController"

.field static final TRANSACTION_clearDeviceCertificates:I = 0x8

.field static final TRANSACTION_copyMctoRst:I = 0x7

.field static final TRANSACTION_getCertInfo:I = 0x4

.field static final TRANSACTION_loadTA:I = 0x1

.field static final TRANSACTION_makeSystemCall:I = 0x6

.field static final TRANSACTION_processTACommand:I = 0x3

.field static final TRANSACTION_setCertInfo:I = 0x5

.field static final TRANSACTION_unloadTA:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p0, p0, v0}, Landroid/spay/ITAController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/spay/ITAController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.spay.ITAController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/spay/ITAController;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/spay/ITAController;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/spay/ITAController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/spay/ITAController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 57
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 59
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/spay/ITAController$Stub;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v6

    .line 61
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v6, :cond_1

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 54
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .restart local v2    # "_arg1":J
    .restart local v4    # "_arg2":J
    .restart local v6    # "_result":Z
    :cond_1
    move v0, v8

    .line 62
    goto :goto_2

    .line 67
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->unloadTA()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/spay/TACommandRequest;

    .line 82
    .local v1, "_arg0":Landroid/spay/TACommandRequest;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/spay/ITAController$Stub;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v6

    .line 83
    .local v6, "_result":Landroid/spay/TACommandResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_3

    .line 85
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v6, p3, v7}, Landroid/spay/TACommandResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Landroid/spay/TACommandRequest;
    .end local v6    # "_result":Landroid/spay/TACommandResponse;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/spay/TACommandRequest;
    goto :goto_3

    .line 89
    .restart local v6    # "_result":Landroid/spay/TACommandResponse;
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1    # "_arg0":Landroid/spay/TACommandRequest;
    .end local v6    # "_result":Landroid/spay/TACommandResponse;
    :sswitch_4
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->getCertInfo()Landroid/spay/CertInfo;

    move-result-object v6

    .line 97
    .local v6, "_result":Landroid/spay/CertInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v6, :cond_4

    .line 99
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v6, p3, v7}, Landroid/spay/CertInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v6    # "_result":Landroid/spay/CertInfo;
    :sswitch_5
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    sget-object v0, Landroid/spay/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/spay/CertInfo;

    .line 117
    .local v1, "_arg0":Landroid/spay/CertInfo;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/spay/ITAController$Stub;->setCertInfo(Landroid/spay/CertInfo;)Z

    move-result v6

    .line 118
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v1    # "_arg0":Landroid/spay/CertInfo;
    .end local v6    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/spay/CertInfo;
    goto :goto_4

    .line 124
    .end local v1    # "_arg0":Landroid/spay/CertInfo;
    :sswitch_6
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/spay/ITAController$Stub;->makeSystemCall(I)Z

    move-result v6

    .line 128
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->copyMctoRst()Z

    move-result v6

    .line 136
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->clearDeviceCertificates()Z

    move-result v6

    .line 144
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
