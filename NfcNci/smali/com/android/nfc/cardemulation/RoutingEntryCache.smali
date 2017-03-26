.class public Lcom/android/nfc/cardemulation/RoutingEntryCache;
.super Ljava/lang/Object;
.source "RoutingEntryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z

.field public static final PREFS_DEFAULT_ROUTE_BACKUP:Ljava/lang/String; = "defaultRouteBackUp"

.field public static final PREFS_DEFAULT_ROUTE_SETTING:Ljava/lang/String; = "defaultRouteDest"

.field public static final PREFS_DEFAULT_TECH_ROUTE_SETTING:Ljava/lang/String; = "defaultTechRouteDest"

.field public static final PREF_AUTO_SWITCH:Ljava/lang/String; = "auto_switch"

.field public static final PRIORITY_OFFHOST_ROUTE:Ljava/lang/String; = "ROUTE_TO_PRIORITY_OFFHOST_ROUTE"

.field public static final ROUTE_TO_LISTEN_PROTO_ISO_DEP:Ljava/lang/String; = "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

.field public static final ROUTE_TO_LISTEN_PROTO_NFC_DEP:Ljava/lang/String; = "ROUTE_TO_LISTEN_PROTO_NFC_DEP"

.field public static final ROUTE_TO_LISTEN_TECH:Ljava/lang/String; = "ROUTE_TO_LISTEN_TECH"

.field static final TAG:Ljava/lang/String; = "NfcRoutingManager"


# instance fields
.field private final FIRST_SETTING:Ljava/lang/String;

.field private final SAMSUNG_NFC_PREF:Ljava/lang/String;

.field mCallback:Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

.field mChanged:Z

.field mContext:Landroid/content/Context;

.field mDefaultRouteList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDirty:Z

.field mListenMode:I

.field mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

.field mNfcEnabled:Z

.field mNfcTestMode:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field mProtoclChanged:Z

.field mSamsungPrefs:Landroid/content/SharedPreferences;

.field mTechChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEnabled:Z

    .line 91
    const-string v0, "First"

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->FIRST_SETTING:Ljava/lang/String;

    .line 92
    const-string v0, "SamsungNfcPrefs"

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->SAMSUNG_NFC_PREF:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    .line 107
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mCallback:Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

    .line 110
    return-void
.end method


# virtual methods
.method public disableAutoSwitching()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mCallback:Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

    invoke-interface {v0, v2}, Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;->onAutoRoutingStateChanged(Z)V

    .line 271
    return-void
.end method

.method public enableAutoSwitching()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mCallback:Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

    invoke-interface {v0, v2}, Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;->onAutoRoutingStateChanged(Z)V

    .line 265
    return-void
.end method

.method public enableDisableTestMode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "nfcEeName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 410
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v4

    if-nez v4, :cond_2

    .line 411
    :cond_0
    sget-boolean v4, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NfcRoutingManager"

    const-string v5, "Warnig - This values cannot be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    const/4 v3, 0x0

    .line 444
    :goto_0
    return-object v3

    .line 415
    :cond_2
    move-object v3, p1

    .line 417
    .local v3, "routeValue":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NfcRoutingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testMode - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " route - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isNfcTestMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 420
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setNfcTestMode(Z)V

    .line 423
    :cond_4
    if-eqz p2, :cond_6

    .line 424
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v5, "defaultRouteBackUp"

    const-string v6, "ENABLE_TEST"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "enableTestMode":Ljava/lang/String;
    const-string v4, "ENABLE_TEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 429
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v5, "defaultRouteDest"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "currenDefault":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "defaultRouteBackUp"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    .end local v0    # "currenDefault":Ljava/lang/String;
    :cond_5
    move-object v3, p1

    .line 435
    goto :goto_0

    .line 437
    .end local v1    # "enableTestMode":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v5, "defaultRouteBackUp"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "restoreDefault":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "defaultRouteDest"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "defaultRouteBackUp"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    move-object v3, v2

    goto :goto_0
.end method

.method public getRoutingDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "routeType"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 114
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mContext:Landroid/content/Context;

    const-string v7, "NfcServicePrefs"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mPrefs:Landroid/content/SharedPreferences;

    .line 115
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mContext:Landroid/content/Context;

    const-string v7, "SamsungNfcPrefs"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    .line 126
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getDefaultProtocolRoute()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "isoDepRouteFromCsc":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getDefaultTechnologyRoute()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "techRouteFromCsc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v7, "defaultRouteDest"

    const-string v8, "First"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "isoRouteFromPref":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v7, "defaultTechRouteDest"

    const-string v8, "First"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "techRouteFromPref":Ljava/lang/String;
    const-string v6, "First"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 152
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "defaultRouteDest"

    const-string v8, "First"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string v6, "First"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    move-object v0, v2

    .line 163
    .local v0, "defaultIsoDepRouteValues":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v6, v0}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v6

    if-nez v6, :cond_0

    .line 164
    const-string v0, "DH"

    .line 168
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultRouteDest"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    :cond_1
    :goto_1
    const-string v6, "First"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 185
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "defaultTechRouteDest"

    const-string v8, "First"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    const-string v6, "First"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 189
    move-object v1, v4

    .line 197
    .local v1, "defaultTechRouteVaues":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v6, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v6

    if-nez v6, :cond_2

    .line 198
    const-string v1, "DH"

    .line 202
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultTechRouteDest"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultRouteDest"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultTechRouteDest"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    const-string v7, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v6, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    const-string v7, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {v6, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    const-string v7, "ROUTE_TO_LISTEN_PROTO_NFC_DEP"

    const-string v8, "DH"

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    .line 225
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isSupportAutoSwitching()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 229
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->enableAutoSwitching()V

    .line 234
    :goto_4
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcTestMode:Z

    .line 235
    return-void

    .line 158
    .end local v0    # "defaultIsoDepRouteValues":Ljava/lang/String;
    .end local v1    # "defaultTechRouteVaues":Ljava/lang/String;
    :cond_4
    move-object v0, v3

    .restart local v0    # "defaultIsoDepRouteValues":Ljava/lang/String;
    goto/16 :goto_0

    .line 171
    .end local v0    # "defaultIsoDepRouteValues":Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .line 175
    .restart local v0    # "defaultIsoDepRouteValues":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v6, v0}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 176
    move-object v0, v2

    .line 177
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultRouteDest"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 192
    :cond_6
    move-object v1, v5

    .restart local v1    # "defaultTechRouteVaues":Ljava/lang/String;
    goto :goto_2

    .line 205
    .end local v1    # "defaultTechRouteVaues":Ljava/lang/String;
    :cond_7
    move-object v1, v5

    .line 209
    .restart local v1    # "defaultTechRouteVaues":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v6, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v6

    if-nez v6, :cond_3

    .line 210
    move-object v1, v4

    .line 211
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "defaultTechRouteDest"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 231
    :cond_8
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->disableAutoSwitching()V

    goto :goto_4
.end method

.method public invalidate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 275
    iget-boolean v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEnabled:Z

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 281
    .local v1, "defaultRouteId":I
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->clearTable(I)V

    .line 282
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->clearTable(I)V

    .line 285
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    const-string v5, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "defaultIsoDepRouteValues":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    const-string v5, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, "defaultTechRouteVaues":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v4, :cond_1

    .line 291
    const-string v4, "NfcRoutingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISO_DEP : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", TECH : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v4, v0}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v3

    .line 297
    .local v3, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    if-nez v3, :cond_3

    .line 298
    sget-boolean v4, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "NfcRoutingManager"

    const-string v5, "ISO_DEP object is null, so use HCE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    const-string v5, "DH"

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v3

    .line 302
    :cond_3
    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v1

    .line 304
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getListenProtocol()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getSupportedExtendedPowerState()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/nfc/NfcService;->routeProtocol(III)V

    .line 309
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v4, v2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v3

    .line 310
    if-nez v3, :cond_5

    .line 311
    sget-boolean v4, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "NfcRoutingManager"

    const-string v5, "TECH object is null, so use HCE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    const-string v5, "DH"

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v3

    .line 315
    :cond_5
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getListenTechnology()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->getSupportedExtendedPowerState()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/nfc/NfcService;->routeTechnology(III)V

    .line 322
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mCallback:Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;

    invoke-interface {v4, v1}, Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;->onDefaultRouteUpdated(I)V

    .line 324
    iput-boolean v8, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    .line 325
    iput-boolean v8, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    goto/16 :goto_0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcTestMode()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcTestMode:Z

    return v0
.end method

.method public isSupportAutoSwitching()Z
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onNfcDisabled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEnabled:Z

    .line 247
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    .line 249
    return-void
.end method

.method public onNfcEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEnabled:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->invalidate()V

    .line 243
    return-void
.end method

.method public setNfcTestMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 403
    sget-boolean v0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcTestMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcTestMode:Z

    .line 405
    return-void
.end method

.method public setRoutingDestination(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "routeType"    # Ljava/lang/String;
    .param p2, "nfcEeId"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v1, p2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(I)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v0

    .line 386
    .local v0, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    if-nez v0, :cond_0

    .line 387
    const/4 v1, 0x0

    .line 391
    :goto_0
    return v1

    .line 390
    :cond_0
    const-string v1, "NfcRoutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoutingDestination - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/NfcEeObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/NfcEeObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setRoutingDestination(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setRoutingDestination(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "routeType"    # Ljava/lang/String;
    .param p2, "nfcEeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 352
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, "curNfcEeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v3, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v2

    .line 354
    .local v2, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    const/4 v0, 0x0

    .line 356
    .local v0, "changed":Z
    if-nez v2, :cond_1

    .line 357
    sget-boolean v3, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NfcRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " It does not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mChanged:Z

    .line 381
    :goto_0
    return v3

    .line 361
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const/4 v0, 0x1

    .line 367
    const-string v3, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "defaultRouteDest"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    iput-boolean v5, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    :cond_2
    :goto_1
    move v3, v0

    .line 381
    goto :goto_0

    .line 371
    :cond_3
    const-string v3, "ROUTE_TO_PRIORITY_OFFHOST_ROUTE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 375
    const-string v3, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mSamsungPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "defaultTechRouteDest"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    iput-boolean v5, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    goto :goto_1
.end method

.method public setTempRouting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "routeType"    # Ljava/lang/String;
    .param p2, "newDefault"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 330
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, "currentDefault":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mNfcEeCache:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v2, p2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v1

    .line 333
    .local v1, "nfcEeObjForNew":Lcom/android/nfc/cardemulation/NfcEeObject;
    if-nez v1, :cond_1

    .line 334
    sget-boolean v2, Lcom/android/nfc/cardemulation/RoutingEntryCache;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcRoutingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " It does not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mDefaultRouteList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mProtoclChanged:Z

    goto :goto_0

    .line 344
    :cond_2
    const-string v2, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/RoutingEntryCache;->mTechChanged:Z

    goto :goto_0
.end method
