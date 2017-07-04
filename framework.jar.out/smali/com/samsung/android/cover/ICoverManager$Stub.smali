.class public abstract Lcom/samsung/android/cover/ICoverManager$Stub;
.super Landroid/os/Binder;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverManager"

.field static final TRANSACTION_addLedNotification:I = 0x10

.field static final TRANSACTION_disableCoverManager:I = 0x9

.field static final TRANSACTION_disableLcdOffByCover:I = 0x13

.field static final TRANSACTION_enableLcdOffByCover:I = 0x14

.field static final TRANSACTION_getCoverState:I = 0x7

.field static final TRANSACTION_getCoverStateForExternal:I = 0x18

.field static final TRANSACTION_getVersion:I = 0xa

.field static final TRANSACTION_isCoverManagerDisabled:I = 0x8

.field static final TRANSACTION_notifyCoverAttachStateChanged:I = 0x5

.field static final TRANSACTION_notifyCoverSwitchStateChanged:I = 0x4

.field static final TRANSACTION_notifySmartCoverAttachStateChanged:I = 0x6

.field static final TRANSACTION_onCoverAppCovered:I = 0x15

.field static final TRANSACTION_readTouchChannelCountForExternal:I = 0x19

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerListenerCallback:I = 0x2

.field static final TRANSACTION_registerListenerCallbackForExternal:I = 0x16

.field static final TRANSACTION_registerNfcTouchListenerCallback:I = 0xd

.field static final TRANSACTION_removeLedNotification:I = 0x11

.field static final TRANSACTION_sendDataToCover:I = 0xb

.field static final TRANSACTION_sendDataToNfcLedCover:I = 0xf

.field static final TRANSACTION_sendPowerKeyToCover:I = 0xc

.field static final TRANSACTION_sendSystemEvent:I = 0x12

.field static final TRANSACTION_sendTouchRegionForExternal:I = 0x1a

.field static final TRANSACTION_setCoverPackage:I = 0x1b

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_unregisterCallbackForExternal:I = 0x17

.field static final TRANSACTION_unregisterNfcTouchListenerCallback:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;
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
    const-string v1, "com.samsung.android.cover.ICoverManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cover/ICoverManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 58
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 75
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 82
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    .line 86
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 96
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    .line 97
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverSwitchStateChanged(JZ)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_3
    move v2, v5

    .line 96
    goto :goto_3

    .line 103
    .end local v0    # "_arg0":J
    :sswitch_5
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    .line 108
    .restart local v2    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverAttachStateChanged(JZ)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_4
    move v2, v5

    .line 107
    goto :goto_4

    .line 114
    .end local v0    # "_arg0":J
    :sswitch_6
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 118
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v2, v6

    .line 120
    .restart local v2    # "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    sget-object v5, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverState;

    .line 126
    .local v3, "_arg2":Lcom/samsung/android/cover/CoverState;
    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/samsung/android/cover/CoverState;
    :cond_5
    move v2, v5

    .line 118
    goto :goto_5

    .line 124
    .restart local v2    # "_arg1":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/samsung/android/cover/CoverState;
    goto :goto_6

    .line 132
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/samsung/android/cover/CoverState;
    :sswitch_7
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    .line 134
    .local v4, "_result":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_7

    .line 136
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {v4, p3, v6}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v4    # "_result":Lcom/samsung/android/cover/CoverState;
    :sswitch_8
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->isCoverManagerDisabled()Z

    move-result v4

    .line 148
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    .line 158
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_9
    move v0, v5

    .line 156
    goto :goto_7

    .line 167
    :sswitch_a
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getVersion()I

    move-result v4

    .line 169
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v4    # "_result":I
    :sswitch_b
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 180
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToCover(I[B)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    :sswitch_c
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendPowerKeyToCover()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    :sswitch_d
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 199
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 200
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 205
    .local v3, "_arg2":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    goto :goto_8

    .line 211
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    :sswitch_e
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 214
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v4

    .line 215
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v4, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 226
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToNfcLedCover(I[B)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    :sswitch_10
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 235
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 240
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->addLedNotification(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 246
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 249
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 254
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->removeLedNotification(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 260
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_12
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 263
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 268
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 274
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 279
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 284
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v4

    .line 285
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c

    .line 291
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_14
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 295
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 296
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 301
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v4

    .line 302
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v4, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d

    .line 308
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_15
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v0, v6

    .line 311
    .local v0, "_arg0":Z
    :goto_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->onCoverAppCovered(Z)I

    move-result v4

    .line 312
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_13
    move v0, v5

    .line 310
    goto :goto_e

    .line 318
    :sswitch_16
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 322
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 323
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 329
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 326
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_f

    .line 336
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_17
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v4

    .line 340
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v4, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    .line 348
    .local v4, "_result":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v4, :cond_16

    .line 350
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v4, p3, v6}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 354
    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v4    # "_result":Lcom/samsung/android/cover/CoverState;
    :sswitch_19
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->readTouchChannelCountForExternal()Landroid/graphics/Point;

    move-result-object v4

    .line 362
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v4, :cond_17

    .line 364
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 368
    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_1a
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 378
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendTouchRegionForExternal([BII)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_1b
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->setCoverPackage(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
