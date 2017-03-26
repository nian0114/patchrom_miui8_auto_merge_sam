.class public abstract Lcom/gsma/services/nfc/INfcController$Stub;
.super Landroid/os/Binder;
.source "INfcController.java"

# interfaces
.implements Lcom/gsma/services/nfc/INfcController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/INfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/INfcController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.nfc.INfcController"

.field static final TRANSACTION_commit:I = 0xc

.field static final TRANSACTION_defineOffHostService:I = 0x6

.field static final TRANSACTION_deleteOffHostService:I = 0x7

.field static final TRANSACTION_disableCardEmulationMode:I = 0x5

.field static final TRANSACTION_enableCardEmulationMode:I = 0x4

.field static final TRANSACTION_enableMultiEvt_transactionReception:I = 0xd

.field static final TRANSACTION_enableNfcController:I = 0x2

.field static final TRANSACTION_getActiveSecureElement:I = 0xa

.field static final TRANSACTION_getAvailableSecureElements:I = 0xf

.field static final TRANSACTION_getBanner:I = 0x10

.field static final TRANSACTION_getDefaultOffHostService:I = 0x9

.field static final TRANSACTION_getOffHostServices:I = 0x8

.field static final TRANSACTION_getProperty:I = 0xe

.field static final TRANSACTION_isCardEmulationEnabled:I = 0x3

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_setActiveSecureElement:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;
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
    const-string v1, "com.gsma.services.nfc.INfcController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/nfc/INfcController;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/gsma/services/nfc/INfcController;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/gsma/services/nfc/INfcController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/INfcController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->isEnabled()Z

    move-result v4

    .line 49
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->enableNfcController(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 59
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->isCardEmulationEnabled()Z

    move-result v4

    .line 67
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->enableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 77
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_5
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 86
    .restart local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->disableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 87
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_6
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gsma/services/nfc/INfcController$Stub;->defineOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 103
    .local v4, "_result":Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v4, p3, v6}, Lcom/gsma/services/nfc/OffHostService;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_7
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    sget-object v5, Lcom/gsma/services/nfc/OffHostService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/nfc/OffHostService;

    .line 125
    .local v1, "_arg1":Lcom/gsma/services/nfc/OffHostService;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/nfc/INfcController$Stub;->deleteOffHostService(Ljava/lang/String;Lcom/gsma/services/nfc/OffHostService;)I

    move-result v4

    .line 126
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    .end local v4    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    goto :goto_1

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_8
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getOffHostServices(Ljava/lang/String;)[Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 136
    .local v4, "_result":[Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Lcom/gsma/services/nfc/OffHostService;
    :sswitch_9
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 146
    .local v4, "_result":Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_4

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v4, p3, v6}, Lcom/gsma/services/nfc/OffHostService;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 152
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_a
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->getActiveSecureElement()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->setActiveSecureElement(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_c
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    sget-object v5, Lcom/gsma/services/nfc/OffHostService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/nfc/OffHostService;

    .line 184
    .local v0, "_arg0":Lcom/gsma/services/nfc/OffHostService;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->commit(Lcom/gsma/services/nfc/OffHostService;)I

    move-result v4

    .line 185
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/OffHostService;
    .end local v4    # "_result":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/gsma/services/nfc/OffHostService;
    goto :goto_2

    .line 191
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_d
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->enableMultiEvt_transactionReception()I

    move-result v4

    .line 193
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v4    # "_result":I
    :sswitch_e
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getProperty(I)Z

    move-result v4

    .line 203
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getAvailableSecureElements(I)[Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_10
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/nfc/INfcController$Stub;->getBanner(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 225
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v4, :cond_7

    .line 227
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 231
    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
