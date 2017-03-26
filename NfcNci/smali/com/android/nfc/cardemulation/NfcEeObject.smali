.class public Lcom/android/nfc/cardemulation/NfcEeObject;
.super Ljava/lang/Object;
.source "NfcEeObject.java"


# instance fields
.field mEnabled:Z

.field mExtendedPowerState:I

.field mListenPorotocl:I

.field mListenTechnology:I

.field mNfcEeID:I

.field mNfcEeName:Ljava/lang/String;

.field mOnHost:Z

.field mPowerState:I

.field mRoutingMode:I

.field mScreenState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "routingMode"    # I
    .param p4, "powerState"    # I
    .param p5, "screenState"    # I
    .param p6, "listenTech"    # I
    .param p7, "listenProto"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeName:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeID:I

    .line 56
    iput p3, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    .line 57
    iput p4, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    .line 58
    iput p5, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    .line 59
    iget v1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    iget v2, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mExtendedPowerState:I

    .line 61
    iput p6, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenTechnology:I

    .line 62
    iput p7, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenPorotocl:I

    .line 64
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mEnabled:Z

    .line 66
    iget v1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeID:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mOnHost:Z

    .line 67
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mEnabled:Z

    .line 150
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeID:I

    return v0
.end method

.method public getListenProtocol()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenPorotocl:I

    return v0
.end method

.method public getListenTechnology()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenTechnology:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingMode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    return v0
.end method

.method public getSupportedExtendedPowerState()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mExtendedPowerState:I

    return v0
.end method

.method public getSupportedPowerState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    return v0
.end method

.method public getSupportedScreenState()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mEnabled:Z

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mOnHost:Z

    return v0
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mNfcEeID:I

    return-void
.end method

.method public setListenProtocol(I)V
    .locals 0
    .param p1, "protocl"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenPorotocl:I

    .line 146
    return-void
.end method

.method public setListenTechnology(I)V
    .locals 0
    .param p1, "listenTech"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mListenTechnology:I

    .line 142
    return-void
.end method

.method public setPowerState(I)V
    .locals 2
    .param p1, "powerState"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    .line 133
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mExtendedPowerState:I

    .line 134
    return-void
.end method

.method public setRoutingMode(I)V
    .locals 1
    .param p1, "routingMode"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 127
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    goto :goto_0
.end method

.method public setScreenState(I)V
    .locals 2
    .param p1, "screenState"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    .line 138
    iget v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mScreenState:I

    iget v1, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mPowerState:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mExtendedPowerState:I

    .line 139
    return-void
.end method

.method public shouldEnableNfcEe(I)Z
    .locals 4
    .param p1, "screenState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "flag":Z
    iget v3, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    packed-switch v3, :pswitch_data_0

    .line 119
    :goto_0
    return v0

    .line 93
    :pswitch_0
    const/4 v0, 0x0

    .line 94
    goto :goto_0

    .line 98
    :pswitch_1
    if-lez p1, :cond_1

    iget v3, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    if-gt v3, p1, :cond_0

    move v0, v1

    .line 99
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 98
    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 103
    :pswitch_2
    if-lez p1, :cond_3

    iget v3, p0, Lcom/android/nfc/cardemulation/NfcEeObject;->mRoutingMode:I

    if-gt v3, p1, :cond_2

    move v0, v1

    .line 104
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    .line 103
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    .line 108
    :pswitch_3
    const/4 v0, 0x1

    .line 109
    goto :goto_0

    .line 113
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
