.class public Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
.super Ljava/lang/Object;
.source "NfcEeObjectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;
    }
.end annotation


# static fields
.field static final DBG:Z

.field public static final MAX_NFCEE:I = 0x3

.field public static final NFCEE_DEVICE_HOST_ID:I = 0x0

.field public static final NFCEE_DEVICE_HOST_NAME:Ljava/lang/String; = "DH"

.field public static final NFCEE_SE_ESE_ID:I = 0x1

.field public static final NFCEE_SE_ESE_NAME:Ljava/lang/String; = "ESE"

.field public static final NFCEE_SE_UICC_ID:I = 0x2

.field public static final NFCEE_SE_UICC_NAME:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "NfcroutingManager"


# instance fields
.field private mMinimumListenMode:I

.field mNfcEeObjectDB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/NfcEeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    .line 77
    return-void
.end method

.method private computePowerState(Ljava/lang/String;)I
    .locals 4
    .param p1, "routingMode"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "powerState":I
    const-string v1, "ROUTE_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcroutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    return v0

    .line 214
    :cond_2
    const/4 v0, 0x1

    .line 215
    const-string v1, "ROUTE_ON_ALWAYS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    or-int/lit8 v0, v0, 0x6

    goto :goto_0
.end method

.method private computeScreenState(Ljava/lang/String;)I
    .locals 4
    .param p1, "routingMode"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "screenState":I
    const-string v1, "ROUTE_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcroutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    return v0

    .line 230
    :cond_2
    const-string v1, "ROUTE_ON_WHEN_SCREEN_UNLOCK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    const/16 v0, 0x20

    goto :goto_0

    .line 233
    :cond_3
    const-string v1, "ROUTE_ON_WHEN_SCREEN_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const/16 v0, 0x30

    goto :goto_0

    .line 237
    :cond_4
    const-string v1, "ROUTE_ON_WHEN_POWER_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    const/16 v0, 0x38

    goto :goto_0

    .line 242
    :cond_5
    const-string v1, "ROUTE_ON_ALWAYS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/16 v0, 0x38

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    .locals 1

    .prologue
    .line 84
    # getter for: Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;->INSTANCE:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;->access$000()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method computeRoutingMode(Ljava/lang/String;)I
    .locals 4
    .param p1, "routingMode"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v0, 0x1

    .line 256
    .local v0, "mode":I
    const-string v1, "ROUTE_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcroutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Routing Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    return v0

    .line 259
    :cond_2
    const-string v1, "ROUTE_ON_WHEN_SCREEN_UNLOCK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    const/4 v0, 0x3

    goto :goto_0

    .line 262
    :cond_3
    const-string v1, "ROUTE_ON_WHEN_SCREEN_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    const/4 v0, 0x2

    goto :goto_0

    .line 265
    :cond_4
    const-string v1, "ROUTE_ON_WHEN_POWER_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    const/4 v0, 0x4

    goto :goto_0

    .line 268
    :cond_5
    const-string v1, "ROUTE_ON_ALWAYS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getObject(I)Lcom/android/nfc/cardemulation/NfcEeObject;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "nfcEeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    check-cast v2, Lcom/android/nfc/cardemulation/NfcEeObject;

    .line 182
    .restart local v2    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v3, v2

    .line 185
    .end local v1    # "nfcEeName":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/NfcEeObject;

    return-object v0
.end method

.method public getObjectAll()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/NfcEeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, "nfcEeObjList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/NfcEeObject;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "nfcEeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v1    # "nfcEeName":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public insertObject(Lcom/android/nfc/cardemulation/NfcEeObject;)V
    .locals 2
    .param p1, "nfcEeObj"    # Lcom/android/nfc/cardemulation/NfcEeObject;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/nfc/cardemulation/NfcEeObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public isSupportCardEmulation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/NfcEeObject;

    .line 204
    .local v0, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeNewObject(Ljava/lang/String;)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "id":I
    const/4 v6, 0x0

    .line 92
    .local v6, "listenTech":I
    const/4 v7, 0x0

    .line 93
    .local v7, "listenProto":I
    const-string v10, ""

    .line 94
    .local v10, "routingType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "powerState":I
    const/4 v5, 0x0

    .line 96
    .local v5, "screenState":I
    const/4 v3, 0x0

    .line 97
    .local v3, "routingMode":I
    const-string v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "OMC_SALES_CODE":Ljava/lang/String;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "CSC_SALES_CODE":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move-object v11, v8

    .line 101
    .local v11, "salesCode":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcroutingManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "make new NFC eeobject :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const-string v1, "DH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getHceRutingInfo()Ljava/lang/String;

    move-result-object v10

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computePowerState(Ljava/lang/String;)I

    move-result v4

    .line 108
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeScreenState(Ljava/lang/String;)I

    move-result v5

    .line 109
    invoke-virtual {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeRoutingMode(Ljava/lang/String;)I

    move-result v3

    .line 111
    const/4 v6, 0x1

    .line 112
    const/4 v7, 0x1

    .line 157
    :goto_1
    new-instance v0, Lcom/android/nfc/cardemulation/NfcEeObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/nfc/cardemulation/NfcEeObject;-><init>(Ljava/lang/String;IIIIII)V

    .line 160
    .local v0, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->mNfcEeObjectDB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/NfcEeObject;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v0    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    :cond_2
    :goto_2
    return-void

    .end local v11    # "salesCode":Ljava/lang/String;
    :cond_3
    move-object v11, v9

    .line 99
    goto :goto_0

    .line 115
    .restart local v11    # "salesCode":Ljava/lang/String;
    :cond_4
    const-string v1, "ESE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getEceRutingInfo()Ljava/lang/String;

    move-result-object v10

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computePowerState(Ljava/lang/String;)I

    move-result v4

    .line 121
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeScreenState(Ljava/lang/String;)I

    move-result v5

    .line 122
    invoke-virtual {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeRoutingMode(Ljava/lang/String;)I

    move-result v3

    .line 124
    const/4 v6, 0x3

    .line 126
    const/4 v7, 0x1

    goto :goto_1

    .line 128
    :cond_5
    const-string v1, "UICC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getUceRutingInfo()Ljava/lang/String;

    move-result-object v10

    .line 132
    const/4 v2, 0x2

    .line 133
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computePowerState(Ljava/lang/String;)I

    move-result v4

    .line 134
    invoke-direct {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeScreenState(Ljava/lang/String;)I

    move-result v5

    .line 135
    invoke-virtual {p0, v10}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->computeRoutingMode(Ljava/lang/String;)I

    move-result v3

    .line 138
    const-string v1, "TGY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "BRI"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHZ"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHN"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHM"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHU"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CTC"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHC"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    :cond_6
    const/4 v6, 0x7

    .line 150
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 146
    :cond_7
    const/4 v6, 0x3

    goto :goto_3

    .line 153
    :cond_8
    sget-boolean v1, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NfcroutingManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not supported. It is error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
