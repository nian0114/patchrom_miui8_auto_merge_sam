.class public Lcom/android/services/telephony/common/SecCallExtra;
.super Ljava/lang/Object;
.source "SecCallExtra.java"


# static fields
.field private static final DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOLUTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 96
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_TX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_RX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_REQUEST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    .line 110
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGALAND"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HD720"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    .line 120
    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->initHashMap()V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->initHashMap()V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string v1, "SecCallExtra"

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 166
    return-object v0
.end method

.method public static getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 2

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const-string v0, "SecCallExtra"

    const-string v1, "getSecCallExtra - bundle = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/android/services/telephony/common/SecCallExtra;

    const-string v0, "SecCallExtra"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Ljava/util/HashMap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string v0, "SecCallExtra"

    const-string v1, "setSecCallExtraToBundle - secCallExtra = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 p0, 0x0

    .line 179
    :goto_0
    return-object p0

    .line 174
    :cond_0
    if-nez p0, :cond_1

    .line 175
    const-string v0, "SecCallExtra"

    const-string v1, "setSecCallExtraToBundle - bundle = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 178
    :cond_1
    const-string v0, "SecCallExtra"

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public static setSecCallExtraToBundle(Landroid/os/Bundle;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    const-string v0, "SecCallExtra"

    const-string v1, "setSecCallExtraToBundle - map = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 p0, 0x0

    .line 192
    :goto_0
    return-object p0

    .line 187
    :cond_0
    if-nez p0, :cond_1

    .line 188
    const-string v0, "SecCallExtra"

    const-string v1, "setSecCallExtraToBundle - bundle = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 191
    :cond_1
    const-string v0, "SecCallExtra"

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method


# virtual methods
.method public IsIPCall()Z
    .locals 1

    .prologue
    .line 361
    const-string v0, "IsIpCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    const-string v0, "audio_codec"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return p2

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getByteValue(Ljava/lang/String;)B
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getByteValue(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getByteValue(Ljava/lang/String;B)B
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public getCWToneSignal()I
    .locals 2

    .prologue
    .line 517
    const-string v0, "CWToneSignal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallDirection()I
    .locals 2

    .prologue
    .line 948
    const-string v0, "CallDirection"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    const-string v0, "CdnipNumber"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "ConnectionCallId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectForCallBarring()Z
    .locals 1

    .prologue
    .line 613
    const-string v0, "DisconnectForCallBarring"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDomain()I
    .locals 2

    .prologue
    .line 385
    const-string v0, "Domain"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDomainCsCause()I
    .locals 2

    .prologue
    .line 393
    const-string v0, "DomainCsCause"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEpdgCall()Z
    .locals 1

    .prologue
    .line 417
    const-string v0, "IsEpdgCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEpdgW2L()Z
    .locals 1

    .prologue
    .line 433
    const-string v0, "IsEpdgW2L"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 823
    const-string v0, "GroupId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHDIcon()I
    .locals 2

    .prologue
    .line 401
    const-string v0, "HDIcon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasBeenVideoCall()Z
    .locals 1

    .prologue
    .line 621
    const-string v0, "HasBeenVideoCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHoldStateOfTheOtherParty()B
    .locals 1

    .prologue
    .line 717
    const-string v0, "IsHoldedByTheOtherParty"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getByteValue(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getImsCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    const-string v0, "ImsCallId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitModifiedLogType()I
    .locals 2

    .prologue
    .line 589
    const-string v0, "InitModifiedLogType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getIsTwoPhone()Z
    .locals 1

    .prologue
    .line 501
    const-string v0, "IsTwoPhoneMode"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLineMSISDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    const-string v0, "LineMSISDN"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogServiceType()I
    .locals 1

    .prologue
    .line 581
    const-string v0, "LogSeviceType"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public getModifiedLogType()I
    .locals 2

    .prologue
    .line 597
    const-string v0, "ModifiedLogType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeChanged()I
    .locals 1

    .prologue
    .line 788
    const-string v0, "IsPhoneTypeChanged"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRadOriginalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "RadOriginalNumber"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    const-string v0, "RecordSaveFilePath"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    const-string v0, "SipCallId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpamTagType()I
    .locals 1

    .prologue
    .line 871
    const-string v0, "SpamTagType"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSubNumberId()I
    .locals 1

    .prologue
    .line 972
    const-string v0, "SubNumberId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "TelecomCallId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtyType()I
    .locals 1

    .prologue
    .line 772
    const-string v0, "TtyType"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTwoPhoneOriginalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string v0, "TwoPhoneOriginalNumber"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 377
    const-string v0, "Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVTSpeakerState()I
    .locals 2

    .prologue
    .line 629
    const-string v0, "VTSpeakerState"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    const-string v0, "YellowPageName"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getisSpam()Z
    .locals 1

    .prologue
    .line 879
    const-string v0, "IsSpam"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initHashMap()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomainCsCause(I)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setVTSpeakerState(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setInitModifiedLogType(I)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setCallDirection(I)V

    .line 152
    return-void
.end method

.method public isAutoRejectCall()Z
    .locals 1

    .prologue
    .line 341
    const-string v0, "IsAutorejectCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDowngradeCall()Z
    .locals 1

    .prologue
    .line 908
    const-string v0, "IsDowngradeCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIMSConferenceCall()Z
    .locals 1

    .prologue
    .line 449
    const-string v0, "IMSConferenceCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLineCtrl()Z
    .locals 1

    .prologue
    .line 365
    const-string v0, "LineCtrl"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOneSimMultiNumber()Z
    .locals 1

    .prologue
    .line 964
    const-string v0, "IsOneSimMultiNumber"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadConvertNumber()Z
    .locals 1

    .prologue
    .line 485
    const-string v0, "IsRadNumberConverted"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReceivedCall()Z
    .locals 1

    .prologue
    .line 461
    const-string v0, "ReceivedCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRedialCall()Z
    .locals 1

    .prologue
    .line 333
    const-string v0, "IsRedialCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicePartyCall()I
    .locals 1

    .prologue
    .line 815
    const-string v0, "IsVoicePartyCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isVolteGroupCall()I
    .locals 1

    .prologue
    .line 843
    const-string v0, "IsVolteGroupCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isWfcEmergencyCall()Z
    .locals 1

    .prologue
    .line 835
    const-string v0, "IsWfcEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWfcImsCall()Z
    .locals 1

    .prologue
    .line 746
    const-string v0, "IsWfcImsCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 4

    .prologue
    .line 1035
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1037
    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1039
    :cond_0
    return-void
.end method

.method public setAssisted(I)V
    .locals 1

    .prologue
    .line 637
    const-string v0, "Assisted"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 638
    return-void
.end method

.method public setAutoRejectCall(Z)V
    .locals 1

    .prologue
    .line 345
    const-string v0, "IsAutorejectCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 346
    return-void
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public setByteValue(Ljava/lang/String;B)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method public setCVOStatus(I)V
    .locals 1

    .prologue
    .line 409
    const-string v0, "CVOStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method public setCallDirection(I)V
    .locals 1

    .prologue
    .line 944
    const-string v0, "CallDirection"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 945
    return-void
.end method

.method public setConnectionCallId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 325
    const-string v0, "ConnectionCallId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setDialToKoreaForRAD(Z)V
    .locals 1

    .prologue
    .line 653
    const-string v0, "IsDialToKoreaForRAD"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 654
    return-void
.end method

.method public setDisconnectForCallBarring(Z)V
    .locals 1

    .prologue
    .line 609
    const-string v0, "DisconnectForCallBarring"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 610
    return-void
.end method

.method public setDomain(I)V
    .locals 1

    .prologue
    .line 381
    const-string v0, "Domain"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 382
    return-void
.end method

.method public setDomainCsCause(I)V
    .locals 1

    .prologue
    .line 389
    const-string v0, "DomainCsCause"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 390
    return-void
.end method

.method public setDowngradeCall(Z)V
    .locals 1

    .prologue
    .line 904
    const-string v0, "IsDowngradeCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 905
    return-void
.end method

.method public setEndEarly(Z)V
    .locals 1

    .prologue
    .line 601
    const-string v0, "EndEarly"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 602
    return-void
.end method

.method public setGroupId(I)V
    .locals 1

    .prologue
    .line 827
    const-string v0, "GroupId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 828
    return-void
.end method

.method public setHDIcon(I)V
    .locals 1

    .prologue
    .line 397
    const-string v0, "HDIcon"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 398
    return-void
.end method

.method public setHoldStateOfTheOtherParty(B)V
    .locals 1

    .prologue
    .line 721
    const-string v0, "IsHoldedByTheOtherParty"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setByteValue(Ljava/lang/String;B)V

    .line 722
    return-void
.end method

.method public setIMSConferenceCall(Z)V
    .locals 1

    .prologue
    .line 445
    const-string v0, "IMSConferenceCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method public setIPCall(Z)V
    .locals 1

    .prologue
    .line 357
    const-string v0, "IsIpCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 358
    return-void
.end method

.method public setInitModifiedLogType(I)V
    .locals 1

    .prologue
    .line 585
    const-string v0, "InitModifiedLogType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 586
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setIsTwoPhone(Z)V
    .locals 1

    .prologue
    .line 497
    const-string v0, "IsTwoPhoneMode"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 498
    return-void
.end method

.method public setLineCtrl(Z)V
    .locals 1

    .prologue
    .line 369
    const-string v0, "LineCtrl"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public setLineMSISDN(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 912
    const-string v0, "LineMSISDN"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public setLogServiceType(I)V
    .locals 1

    .prologue
    .line 577
    const-string v0, "LogSeviceType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 578
    return-void
.end method

.method public setModifiedLogType(I)V
    .locals 1

    .prologue
    .line 593
    const-string v0, "ModifiedLogType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 594
    return-void
.end method

.method public setOneSimMultiNumber(Z)V
    .locals 1

    .prologue
    .line 960
    const-string v0, "IsOneSimMultiNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 961
    return-void
.end method

.method public setOutgoingCallMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 465
    const-string v0, "OutgoingCallMessage"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public setPostDialString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 776
    const-string v0, "PostDialString"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public setRadConvertNumber(Z)V
    .locals 1

    .prologue
    .line 481
    const-string v0, "IsRadNumberConverted"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 482
    return-void
.end method

.method public setRadOriginalNumber(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 473
    const-string v0, "RadOriginalNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public setReceivedCall(Z)V
    .locals 1

    .prologue
    .line 457
    const-string v0, "ReceivedCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 458
    return-void
.end method

.method public setRedialCall(Z)V
    .locals 1

    .prologue
    .line 337
    const-string v0, "IsRedialCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 338
    return-void
.end method

.method public setSpamCount(I)V
    .locals 1

    .prologue
    .line 867
    const-string v0, "SpamCount"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 868
    return-void
.end method

.method public setSpamNumber(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 859
    const-string v0, "SpamNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public setSpamTagName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 851
    const-string v0, "SpamTagName"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public setSpamTagType(I)V
    .locals 1

    .prologue
    .line 875
    const-string v0, "SpamTagType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 876
    return-void
.end method

.method public setStartPopupServiceWhenMakeCallFromOtherApp(Z)V
    .locals 1

    .prologue
    .line 421
    const-string v0, "StartPopupServiceWhenMakeCallFromOtherApp"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 422
    return-void
.end method

.method public setSubNumberId(I)V
    .locals 1

    .prologue
    .line 968
    const-string v0, "SubNumberId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 969
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    const-string v0, "TelecomCallId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setTouchPoint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 645
    const-string v0, "TouchPoint"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public setTwoPhoneOriginalNumber(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 489
    const-string v0, "TwoPhoneOriginalNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public setType(I)V
    .locals 1

    .prologue
    .line 373
    const-string v0, "Type"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method public setVTSpeakerState(I)V
    .locals 1

    .prologue
    .line 625
    const-string v0, "VTSpeakerState"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 626
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setVideoResolution(I)V
    .locals 1

    .prologue
    .line 437
    const-string v0, "VideoResolution"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    .line 438
    return-void
.end method

.method public setVirtualLine(Z)V
    .locals 1

    .prologue
    .line 920
    const-string v0, "IsVirtualLine"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 921
    return-void
.end method

.method public setWfcEmergencyCall(Z)V
    .locals 1

    .prologue
    .line 831
    const-string v0, "IsWfcEmergencyCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 832
    return-void
.end method

.method public setWfcImsCall(Z)V
    .locals 1

    .prologue
    .line 742
    const-string v0, "IsWfcImsCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 743
    return-void
.end method

.method public setYellowPageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 760
    const-string v0, "YellowPageName"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public setisSpam(Z)V
    .locals 1

    .prologue
    .line 883
    const-string v0, "IsSpam"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    .line 884
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    const/4 v0, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1023
    const-string v1, "SpamNumber"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1030
    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
