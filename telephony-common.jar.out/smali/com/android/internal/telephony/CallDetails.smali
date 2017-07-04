.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final SHIP_BUILD:Z


# instance fields
.field public call_domain:I

.field public call_isMpty:Z

.field public call_type:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallDetails;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 119
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 125
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 126
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 127
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 5
    .param p1, "callType"    # Lcom/android/internal/telephony/Call$CallType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_0

    .line 135
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 136
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 189
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_1

    .line 138
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 139
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 140
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_2

    .line 141
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 142
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 143
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_3

    .line 144
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 145
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_4

    .line 148
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 149
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qcif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_5

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 153
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_6

    .line 156
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 157
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 158
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_7

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 160
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 161
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_8

    .line 162
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 163
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_9

    .line 166
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 167
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_a

    .line 170
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 171
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 173
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_b

    .line 174
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 175
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_c

    .line 178
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 179
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_d

    .line 182
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 183
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 186
    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 187
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 194
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 195
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 196
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 199
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 200
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 224
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 225
    const/4 v4, 0x0

    .line 237
    :goto_0
    return-object v4

    .line 229
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 231
    if-eqz v1, :cond_1

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 237
    goto :goto_0
.end method

.method public static getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .param p0, "extras"    # [Ljava/lang/String;
    .param p1, "needDecode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 263
    :cond_0
    return-object v4

    .line 251
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 252
    .local v5, "s":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 253
    .local v6, "sep_index":I
    if-gez v6, :cond_2

    .line 251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "value":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method

.method public static videoStateToCallType(I)I
    .locals 3
    .param p0, "videoState"    # I

    .prologue
    .line 385
    invoke-static {p0}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    .line 386
    .local v1, "imsCallType":I
    const/4 v0, 0x0

    .line 388
    .local v0, "callType":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 389
    const/4 v0, 0x1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 391
    const/4 v0, 0x2

    goto :goto_0

    .line 392
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 393
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getCsvFromExtras()Ljava/lang/String;
    .locals 7

    .prologue
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const-string v4, ""

    .line 285
    :goto_0
    return-object v4

    .line 280
    :cond_0
    const-string v0, "+"

    .line 281
    .local v0, "ALLOW_CHARS":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "+"

    invoke-static {v4, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getExtraStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChanged(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 370
    :cond_0
    const/4 v1, 0x0

    .line 381
    :goto_0
    return v1

    .line 373
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-eq v1, v2, :cond_3

    .line 374
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 378
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 381
    goto :goto_0
.end method

.method public setExtraValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 207
    return-void
.end method

.method public setExtrasFromCsv(Ljava/lang/String;)V
    .locals 2
    .param p1, "newExtras"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 290
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public setIsMpty(Z)V
    .locals 0
    .param p1, "isMpty"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 294
    return-void
.end method

.method public toCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "participants"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 298
    .local v0, "isConferenceCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_e

    .line 301
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_1

    .line 302
    if-eqz v0, :cond_0

    .line 303
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    .line 345
    :goto_0
    return-object v2

    .line 305
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 307
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_b

    .line 308
    if-eqz v0, :cond_2

    .line 309
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 310
    :cond_2
    const-string v2, "qcif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 312
    :cond_3
    const-string v2, "qvga"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 314
    :cond_4
    const-string v2, "hd_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 316
    :cond_5
    const-string v2, "hd720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 318
    :cond_6
    const-string v2, "cif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 319
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 320
    :cond_7
    const-string v2, "cif_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 321
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 322
    :cond_8
    const-string v2, "qvga_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 323
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 324
    :cond_9
    const-string v2, "hd720_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 325
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 327
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 329
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_c

    .line 330
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 331
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_d

    .line 332
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 334
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 336
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_11

    .line 337
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_f

    .line 338
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 339
    :cond_f
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_10

    .line 340
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 342
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 345
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    sget-boolean v0, Lcom/android/internal/telephony/CallDetails;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras : xxxxxxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
