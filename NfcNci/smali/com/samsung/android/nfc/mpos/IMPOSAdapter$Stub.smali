.class public abstract Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;
.super Landroid/os/Binder;
.source "IMPOSAdapter.java"

# interfaces
.implements Lcom/samsung/android/nfc/mpos/IMPOSAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.nfc.mpos.IMPOSAdapter"

.field static final TRANSACTION_selectHost:I = 0x2

.field static final TRANSACTION_setDedicatedReaderMode:I = 0x3

.field static final TRANSACTION_setOnCallbacks:I = 0x1

.field static final TRANSACTION_setRfPower:I = 0x4

.field static final TRANSACTION_setTestMode:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    invoke-virtual {p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->setOnCallbacks(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z

    move-result v1

    .line 51
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->selectHost(Ljava/lang/String;)Z

    move-result v1

    .line 61
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 70
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->setDedicatedReaderMode(Z)Z

    move-result v1

    .line 71
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_3
    move v0, v2

    .line 69
    goto :goto_1

    .line 77
    :sswitch_4
    const-string v4, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 80
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->setRfPower(Z)Z

    move-result v1

    .line 81
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_5
    move v0, v2

    .line 79
    goto :goto_2

    .line 87
    :sswitch_5
    const-string v4, "com.samsung.android.nfc.mpos.IMPOSAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->setTestMode(I)Z

    move-result v1

    .line 91
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
