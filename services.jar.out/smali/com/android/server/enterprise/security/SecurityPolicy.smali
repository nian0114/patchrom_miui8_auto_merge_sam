.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    }
.end annotation


# static fields
.field private static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_BLOCK_SIZE:I = 0x1000

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final InitialVectorNum:I = 0x10

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 187
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    .line 205
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 206
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    .line 229
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 246
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 212
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 216
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 222
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.email.provider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I

    .prologue
    .line 2429
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I
    .param p5, "userId"    # I

    .prologue
    .line 2435
    const/4 v11, 0x1

    .line 2437
    .local v11, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2439
    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_1

    .line 2440
    const/4 v11, 0x0

    .line 2472
    :cond_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    return v11

    .line 2442
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2443
    .local v4, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2444
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2450
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 2452
    .local v10, "pemCert":[B
    if-eqz v10, :cond_2

    .line 2453
    invoke-static {v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v6

    .line 2454
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 2455
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v14

    and-int/2addr v11, v14

    .line 2459
    const-string v14, "USRCERT_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2462
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "USRPKEY_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2472
    .end local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pemCert":[B
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 2446
    .restart local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto/16 :goto_0
.end method

.method private enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 2010
    const/4 v2, 0x1

    .line 2011
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2013
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2015
    .local v0, "callingUid":I
    if-nez p2, :cond_0

    .line 2016
    const/4 p3, 0x0

    .line 2018
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string/jumbo v5, "deviceEnrolled"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2022
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "bannerText"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    :goto_0
    return v2

    .line 2026
    :catch_0
    move-exception v1

    .line 2027
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1816
    .local p1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1817
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1820
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1822
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1823
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1825
    .local v4, "resultLine":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1826
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1828
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1829
    .end local v1    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "resultLine":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1834
    if-eqz v2, :cond_0

    .line 1835
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1841
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .line 1834
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 1835
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 1839
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1837
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1838
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 1840
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1837
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1838
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1830
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_3
    :try_start_5
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1834
    if-eqz v2, :cond_0

    .line 1835
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 1837
    :catch_4
    move-exception v0

    .line 1838
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1833
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1834
    :goto_4
    if-eqz v2, :cond_3

    .line 1835
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1839
    :cond_3
    :goto_5
    throw v6

    .line 1837
    :catch_5
    move-exception v0

    .line 1838
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1833
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1830
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1828
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private formatExternalStorageCard()Z
    .locals 10

    .prologue
    .line 744
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    .line 746
    .local v5, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 763
    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 764
    .local v4, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 766
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 767
    .local v2, "lock":Ljava/lang/Object;
    new-instance v3, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 785
    .local v3, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 786
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string/jumbo v7, "file"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 788
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 792
    const-wide/16 v8, 0x1b58

    :try_start_1
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 803
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v7

    .line 793
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v2    # "lock":Ljava/lang/Object;
    .restart local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    .restart local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v7, "SecurityPolicy"

    const-string/jumbo v8, "formatStorageCard - InterruptedException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 796
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 799
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SecurityPolicy"

    const-string/jumbo v8, "formatStorageCard fail"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .locals 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1153
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 1154
    .local v9, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1156
    .local v10, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v10, :cond_2

    .line 1158
    :try_start_1
    invoke-interface {v10}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v13

    .line 1159
    .local v13, "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1160
    .local v2, "alias":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1161
    .local v4, "certData":[B
    if-eqz v4, :cond_0

    .line 1163
    :try_start_2
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v11

    .line 1164
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1165
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_1

    .line 1166
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1167
    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v5, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1168
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1169
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1170
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1173
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v6

    .line 1174
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1180
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    .line 1181
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1183
    :try_start_5
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1191
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v12

    .line 1175
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v4    # "certData":[B
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    .line 1176
    .local v6, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1183
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v16

    :try_start_7
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1186
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v6

    .line 1187
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1183
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_9
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 1188
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v6

    .line 1189
    .local v6, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 512
    .local v1, "mSecureRandom":Ljava/security/SecureRandom;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .end local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 513
    .restart local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .locals 2
    .param p1, "keystore"    # I

    .prologue
    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2568
    .local v0, "keystores":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 2569
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 2572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2573
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    :cond_1
    const-string v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 2578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2579
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    :cond_3
    const-string v1, "VPN and Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 2585
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 8
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1265
    .local v4, "token":J
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1266
    new-instance v1, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v1}, Landroid/app/enterprise/CertificateInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 1268
    .local v3, "pemCert":[B
    if-eqz v3, :cond_0

    .line 1270
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v2

    .line 1271
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1272
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    move-object v0, v1

    .line 1277
    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "pemCert":[B
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    return-object v0

    .line 1277
    :catchall_0
    move-exception v6

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    goto :goto_0
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    const/4 v0, 0x0

    .line 1298
    .local v0, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1300
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1304
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1304
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1307
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 21
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v15, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1108
    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 1111
    .local v13, "names":[Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 1112
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v12, v4, v10

    .line 1113
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v14

    .line 1115
    .local v14, "pemCert":[B
    if-eqz v14, :cond_2

    .line 1116
    invoke-static {v14}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v8

    .line 1117
    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1118
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_0

    .line 1119
    new-instance v7, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v7}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1120
    .local v7, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v7, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1121
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1122
    invoke-virtual {v7, v12}, Landroid/app/enterprise/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 1123
    const-string v18, "USRCERT_"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "USRPKEY_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1126
    .local v5, "arrayPKeys":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v0, v5

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1127
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setHasPrivateKey(Z)V

    .line 1130
    .end local v5    # "arrayPKeys":[Ljava/lang/String;
    :cond_1
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1138
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :catchall_0
    move-exception v18

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1112
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v11    # "len$":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v14    # "pemCert":[B
    :cond_2
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 1138
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    return-object v15
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSessionKey()Ljava/security/Key;
    .locals 4

    .prologue
    .line 497
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 498
    const/4 v1, 0x0

    .line 500
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 501
    const/16 v2, 0x100

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 502
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    return-object v2

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .locals 19
    .param p1, "includeDisabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1198
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v13, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1201
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v10

    .line 1203
    .local v10, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 1204
    .local v11, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v11, :cond_2

    .line 1206
    :try_start_1
    invoke-interface {v11}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v3

    .line 1207
    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1208
    .local v2, "alias":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v6}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1209
    .local v6, "certInfo":Landroid/app/enterprise/CertificateInfo;
    const/4 v12, 0x0

    .line 1210
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move/from16 v0, p1

    invoke-interface {v11, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1212
    .local v5, "certData":[B
    if-eqz v5, :cond_0

    .line 1214
    :try_start_2
    invoke-static {v5}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v12

    .line 1215
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1216
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 1217
    invoke-virtual {v6, v4}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1218
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1219
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1220
    invoke-interface {v11, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setEnabled(Z)V

    .line 1221
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1224
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 1225
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1231
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_1
    move-exception v7

    .line 1232
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1234
    :try_start_5
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1242
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v13

    .line 1226
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "certData":[B
    .restart local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2
    move-exception v7

    .line 1227
    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1234
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v16

    :try_start_7
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1237
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v7

    .line 1238
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1242
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1234
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_3
    :try_start_9
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 1239
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_4
    move-exception v7

    .line 1240
    .local v7, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1242
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 428
    if-nez p1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v1

    .line 428
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBannerApp(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2097
    const/4 v1, 0x1

    .line 2099
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCa(Ljava/security/cert/Certificate;)Z
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v7, 0x0

    .line 2493
    const/4 v6, 0x0

    .line 2494
    .local v6, "x509cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    instance-of v8, p0, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_0

    .line 2495
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 2499
    const-string v8, "2.5.29.19"

    invoke-virtual {v6, v8}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 2500
    .local v1, "asn1EncodedBytes":[B
    if-nez v1, :cond_1

    .line 2509
    .end local v1    # "asn1EncodedBytes":[B
    :cond_0
    :goto_0
    return v7

    .line 2503
    .restart local v1    # "asn1EncodedBytes":[B
    :cond_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 2505
    .local v2, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    .line 2506
    .local v4, "octets":[B
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 2507
    .local v5, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 2508
    .end local v1    # "asn1EncodedBytes":[B
    .end local v2    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v4    # "octets":[B
    .end local v5    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    .line 2509
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private isLastBootInSafeMode()Z
    .locals 3

    .prologue
    .line 2192
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2195
    const/4 v1, 0x1

    .line 2197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNativeKeyStoreUnlocked()Z
    .locals 1

    .prologue
    .line 1368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1372
    const/4 v1, 0x0

    .line 1374
    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 1375
    const/4 v1, 0x1

    .line 1383
    :cond_0
    :goto_0
    return v1

    .line 1377
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isProcOrSysFolder(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1798
    const-string/jumbo v3, "sys"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "parsedPath":[Ljava/lang/String;
    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1802
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return v1

    .line 1806
    :cond_1
    const-string/jumbo v3, "proc"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1807
    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1808
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 1812
    goto :goto_0
.end method

.method private isUserRestrictedFolder(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1776
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1778
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 1780
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isProcOrSysFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    const/4 v0, 0x1

    .line 1793
    :cond_0
    :goto_0
    return v0

    .line 1784
    :cond_1
    const-string v2, "/data/user/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1788
    :cond_2
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1789
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 9
    .param p1, "fdir"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "outFile"    # Ljava/io/PrintWriter;

    .prologue
    .line 1750
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1751
    const/16 v6, 0x14

    if-ge p2, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1754
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1755
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1756
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1760
    .local v5, "listFiles":[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 1761
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1762
    .local v2, "f":Ljava/io/File;
    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v2, v6, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1767
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "listFiles":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1768
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1772
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private needtoCheckPackageCaller()Z
    .locals 3

    .prologue
    .line 2545
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2547
    const/4 v1, 0x0

    .line 2549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1082
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1083
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1085
    add-int/lit8 v1, v1, -0x1

    .line 1082
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1081
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .prologue
    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1337
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1341
    const-string v1, "USRCERT_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    and-int/2addr v0, v1

    .line 1349
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    return v0

    .line 1349
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 2297
    const/4 v0, 0x0

    .line 2299
    .local v0, "certificateAlias":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2301
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 2312
    :cond_0
    :goto_0
    return-object v0

    .line 2303
    :catch_0
    move-exception v1

    .line 2304
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2305
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2306
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2307
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2308
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveDeviceBootMode(Z)Z
    .locals 7
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2178
    const/4 v1, 0x1

    .line 2181
    .local v1, "result":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "deviceBootMode"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2182
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    :goto_2
    return v1

    :cond_0
    move v4, v3

    .line 2181
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2182
    goto :goto_1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private sendIntentToSettings(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2557
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2558
    .local v0, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    iget-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 2559
    return-void
.end method

.method private validateKeystoreParam(I)Z
    .locals 3
    .param p1, "keystore"    # I

    .prologue
    .line 2479
    const/4 v0, 0x7

    .line 2480
    .local v0, "all":I
    const/4 v1, 0x1

    .line 2481
    .local v1, "ret":Z
    and-int v2, p1, v0

    if-nez v2, :cond_1

    .line 2483
    const/4 v1, 0x0

    .line 2488
    :cond_0
    :goto_0
    return v1

    .line 2484
    :cond_1
    or-int v2, p1, v0

    if-eq v2, v0, :cond_0

    .line 2486
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "newpassword"    # Ljava/lang/String;

    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1412
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1568
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2316
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2

    .line 2317
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2322
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2323
    .local v8, "userId":I
    const/16 v16, 0x1

    .line 2324
    .local v16, "ret":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2325
    :cond_0
    const/16 v16, 0x0

    .line 2424
    .end local v16    # "ret":Z
    :cond_1
    :goto_1
    return v16

    .line 2319
    .end local v8    # "userId":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 2327
    .restart local v8    # "userId":I
    .restart local v16    # "ret":Z
    :cond_3
    const/4 v13, 0x0

    .line 2328
    .local v13, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v14, 0x0

    .line 2331
    .local v14, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v10, 0x0

    .line 2332
    .local v10, "certificateAlias":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v15

    .line 2334
    .local v15, "removeCert":Ljava/security/cert/Certificate;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 2337
    .local v18, "token":J
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    .line 2338
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v13

    .line 2339
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v14

    .line 2343
    :cond_4
    invoke-static {v8}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2344
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_a

    .line 2345
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    .line 2350
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v9

    .line 2351
    .local v9, "cert":Ljava/security/cert/Certificate;
    const/4 v12, 0x0

    .line 2352
    .local v12, "issuer":Ljava/lang/String;
    instance-of v2, v9, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5

    .line 2353
    move-object v0, v9

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    .line 2354
    .local v17, "x509cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2356
    .end local v17    # "x509cert":Ljava/security/cert/X509Certificate;
    :cond_5
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " has requested to delete a certificate. Keystore(s) : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Alias : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v10, :cond_b

    const-string v7, "Not available"

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Subject : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Issuer : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2371
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2374
    .end local v16    # "ret":Z
    :goto_4
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_7

    .line 2375
    invoke-static {v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->isCa(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2376
    and-int/lit8 v16, v16, 0x0

    .line 2403
    :cond_7
    :goto_5
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_8

    .line 2404
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CACERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .line 2406
    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USRCERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .line 2409
    .end local v16    # "ret":Z
    :cond_8
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_9

    .line 2410
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CACERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    and-int v16, v16, v2

    .line 2412
    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USRCERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    and-int v16, v16, v2

    .line 2417
    .end local v16    # "ret":Z
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2419
    if-eqz v13, :cond_1

    .line 2420
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_1

    .line 2347
    .restart local v16    # "ret":Z
    :cond_a
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    goto/16 :goto_2

    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v12    # "issuer":Ljava/lang/String;
    :cond_b
    move-object v7, v10

    .line 2356
    goto/16 :goto_3

    .line 2364
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2365
    .local v11, "e":Ljava/lang/AssertionError;
    :try_start_4
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2366
    and-int/lit8 v16, v16, 0x0

    .line 2371
    .local v16, "ret":I
    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 2419
    .end local v11    # "e":Ljava/lang/AssertionError;
    .end local v15    # "removeCert":Ljava/security/cert/Certificate;
    .end local v16    # "ret":I
    .end local v18    # "token":J
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_c

    .line 2420
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_c
    throw v2

    .line 2367
    .restart local v15    # "removeCert":Ljava/security/cert/Certificate;
    .local v16, "ret":Z
    .restart local v18    # "token":J
    :catch_1
    move-exception v11

    .line 2368
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2369
    and-int/lit8 v16, v16, 0x0

    .line 2371
    .local v16, "ret":I
    :try_start_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .end local v11    # "e":Ljava/lang/InterruptedException;
    .local v16, "ret":Z
    :catchall_1
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2378
    .end local v16    # "ret":Z
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v18

    .line 2381
    if-nez v10, :cond_e

    .line 2382
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v10

    .line 2390
    :cond_e
    if-eqz v10, :cond_f

    if-eqz v14, :cond_f

    .line 2392
    :try_start_9
    invoke-interface {v14, v10}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v2

    and-int v16, v16, v2

    .line 2399
    :cond_f
    :goto_6
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 2393
    :catch_2
    move-exception v11

    .line 2394
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2395
    and-int/lit8 v16, v16, 0x0

    .restart local v16    # "ret":Z
    goto :goto_6

    .line 2399
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v16    # "ret":Z
    :catchall_2
    move-exception v2

    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public deleteCertificateFromUserKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2524
    const/4 v0, 0x0

    return v0
.end method

.method public enableRebootBanner(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .prologue
    .line 1955
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v9

    .line 1956
    .local v9, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1958
    .local v6, "userId":I
    if-eqz v9, :cond_0

    .line 1959
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1961
    .local v10, "token":J
    if-eqz p2, :cond_1

    .line 1962
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has enabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1973
    if-eqz v9, :cond_0

    if-nez v6, :cond_0

    .line 1974
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1976
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1977
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1984
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v10    # "token":J
    :cond_0
    :goto_1
    return v9

    .line 1966
    .restart local v10    # "token":J
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has disabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1971
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1978
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v7

    .line 1979
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public enableRebootBannerWithText(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v7

    .line 1989
    .local v7, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1990
    .local v6, "userId":I
    if-eqz v7, :cond_0

    .line 1991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1993
    .local v8, "token":J
    if-eqz p2, :cond_1

    .line 1994
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has enabled reboot banner with text "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2003
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    .end local v8    # "token":J
    :cond_0
    return v7

    .line 1998
    .restart local v8    # "token":J
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has disabled reboot banner."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2003
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public formatInternalStorage(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isExternal"    # Z

    .prologue
    .line 687
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 691
    .local v12, "ident":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v15

    .line 693
    .local v15, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v17

    .line 694
    .local v17, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const/4 v11, 0x0

    .line 696
    .local v11, "isExtSDsupported":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .line 697
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const/4 v11, 0x1

    goto :goto_0

    .line 703
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 704
    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    .line 705
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 731
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested wipe of device external memory."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 737
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatStorageCard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExternal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v2

    .line 707
    :cond_3
    :try_start_1
    const-string v2, "SecurityPolicy"

    const-string v3, "This device doesn\'t suppot External SD card"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 725
    :catch_0
    move-exception v9

    .line 726
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "formatStorageCard fail"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 713
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 714
    .local v14, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v14, :cond_5

    .line 715
    invoke-virtual {v14}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 718
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 720
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested full wipe of device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public getCertificatesFromKeystore(Landroid/app/enterprise/ContextInfo;II)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 2246
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    .line 2247
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2251
    :goto_0
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2252
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2256
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2284
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-lt v2, v3, :cond_6

    .line 2285
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    sget v2, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 2293
    :goto_3
    return-object v2

    .line 2249
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v1    # "userId":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 2259
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v1    # "userId":I
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2260
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    .line 2261
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2262
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2264
    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4

    .line 2265
    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2267
    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2270
    :cond_4
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    .line 2271
    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2273
    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2277
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 2290
    :cond_6
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public getCertificatesFromUserKeystore(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1427
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1428
    const-string v6, "SecurityPolicy"

    const-string v7, " getCredentialStorageStatus calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x4

    .line 1458
    :goto_0
    return v0

    .line 1431
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->needtoCheckPackageCaller()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1436
    :goto_1
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1437
    .local v3, "userId":I
    const/4 v0, 0x4

    .line 1438
    .local v0, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1440
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    .line 1441
    .local v2, "state":Landroid/security/KeyStore$State;
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1442
    const/4 v0, 0x1

    .line 1456
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1434
    .end local v0    # "credentialStorageStatus":I
    .end local v2    # "state":Landroid/security/KeyStore$State;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_1

    .line 1444
    .restart local v0    # "credentialStorageStatus":I
    .restart local v2    # "state":Landroid/security/KeyStore$State;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    :cond_2
    :try_start_1
    sget-object v6, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1445
    const/4 v0, 0x2

    goto :goto_2

    .line 1447
    :cond_3
    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 1448
    const/4 v0, 0x3

    goto :goto_2

    .line 1450
    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    .line 1452
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :catch_0
    move-exception v1

    .line 1453
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore State Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1454
    const/4 v0, 0x4

    .line 1456
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2170
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2171
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesOnDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1647
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1650
    if-eqz p2, :cond_1

    .line 1651
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1653
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1656
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1660
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1661
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1670
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1672
    if-eqz p2, :cond_1

    .line 1673
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1675
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1678
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1681
    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1682
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1684
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1685
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1697
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1700
    if-eqz p3, :cond_0

    .line 1701
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v8, "tempfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1703
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1708
    .end local v8    # "tempfile":Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1746
    :cond_1
    :goto_0
    return v9

    .line 1712
    :cond_2
    if-eqz p2, :cond_3

    .line 1713
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1720
    .end local v3    # "f":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v7, "root":Ljava/io/File;
    const/4 v5, 0x0

    .line 1722
    .local v5, "outFile":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1724
    .local v0, "allFiles":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .local v1, "allFiles":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1727
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .local v6, "outFile":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1728
    if-eqz v7, :cond_4

    .line 1729
    const/4 v10, 0x0

    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1736
    :cond_4
    if-eqz v6, :cond_5

    .line 1737
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 1740
    :cond_5
    if-eqz v1, :cond_6

    .line 1741
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1746
    :cond_6
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1742
    :catch_0
    move-exception v2

    .line 1743
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1732
    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    .line 1736
    .local v4, "ioex":Ljava/io/IOException;
    :goto_2
    if-eqz v5, :cond_7

    .line 1737
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1740
    :cond_7
    if-eqz v0, :cond_1

    .line 1741
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1742
    :catch_2
    move-exception v2

    .line 1743
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_8

    .line 1737
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1740
    :cond_8
    if-eqz v0, :cond_9

    .line 1741
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1744
    :cond_9
    :goto_4
    throw v9

    .line 1742
    :catch_3
    move-exception v2

    .line 1743
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1736
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_3

    .line 1732
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method public getInstalledCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1251
    const-string v1, "USRCERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1253
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1254
    const-string v1, "CACERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1256
    :cond_0
    return-object v0
.end method

.method public getInstalledCertificateNames(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1287
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1288
    return-object v0
.end method

.method public getInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1073
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1074
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1075
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1076
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    .line 1077
    return-object v0
.end method

.method public getRebootBannerText(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2056
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2057
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "bannerText"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 2060
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 2061
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2062
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2067
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 999
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1001
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1006
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    const/4 v4, 0x0

    goto :goto_0

    .line 1006
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1048
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1050
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1055
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    .line 1051
    :catch_0
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    const/4 v4, 0x0

    goto :goto_0

    .line 1055
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSystemCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1064
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1065
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1533
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1534
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1535
    if-eqz p5, :cond_0

    .line 1536
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1538
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    array-length v6, p3

    if-eqz v6, :cond_1

    if-nez p4, :cond_3

    .line 1539
    :cond_1
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate : Invalid parameter(s)"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 1562
    :cond_2
    :goto_0
    return v1

    .line 1542
    :cond_3
    const/4 v1, 0x0

    .line 1543
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1545
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1546
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v4, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1555
    .end local v4    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1559
    :goto_2
    if-eqz v1, :cond_2

    .line 1560
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V

    goto :goto_0

    .line 1549
    :cond_4
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate : KS not UNLOCKED"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    const/4 v1, 0x0

    goto :goto_1

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate EX: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1555
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCertificateToKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2205
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    .line 2206
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2210
    :goto_0
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2212
    .local v8, "userId":I
    const/4 v9, 0x0

    .line 2213
    .local v9, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2214
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2215
    if-eqz p5, :cond_0

    .line 2216
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 2218
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2220
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2221
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Keystore is not unlocked"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2240
    return v9

    .line 2208
    .end local v8    # "userId":I
    .end local v9    # "ret":Z
    .end local v10    # "token":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 2222
    .restart local v8    # "userId":I
    .restart local v9    # "ret":Z
    .restart local v10    # "token":J
    :cond_2
    :try_start_1
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_3

    if-nez p4, :cond_4

    .line 2224
    :cond_3
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2237
    :catchall_0
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2226
    :cond_4
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " has requested to install a certificate. Keystore(s) : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Name : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2230
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v2, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 2231
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_1
.end method

.method public installCertificateToUserKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2515
    const/4 v0, 0x0

    return v0
.end method

.method public installCertificateWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 461
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 462
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 465
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    const-string/jumbo v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 469
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 470
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 484
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    const-string/jumbo v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .param p1, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 453
    return-void
.end method

.method public isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2106
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2108
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2112
    const/4 v1, 0x0

    .line 2114
    .local v1, "status":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "dodBannerVisible"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2119
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2120
    const/4 v2, 0x1

    .line 2122
    :goto_1
    return v2

    .line 2115
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "isDodBannerVisibleAsUser facing exception, return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isExternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 952
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .line 953
    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 957
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_0
    return v4

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    const/4 v4, 0x0

    goto :goto_0

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 930
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 932
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    .line 936
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string/jumbo v6, "is Internal Storage Encrypted ?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRebootBannerEnabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2042
    const/4 v1, 0x0

    .line 2043
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string/jumbo v6, "deviceEnrolled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2046
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2047
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2048
    move v1, v2

    .line 2052
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2037
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2038
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public lockoutDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1898
    .local p4, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1901
    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1902
    :cond_0
    const-string v11, "SecurityPolicy"

    const-string/jumbo v12, "only PIN Password is allowed as limitation from Keyguard FMM "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1907
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1909
    .local v8, "token":J
    if-eqz p3, :cond_2

    .line 1910
    :try_start_0
    const-string/jumbo v11, "lock_fmm_Message"

    move-object/from16 v0, p3

    invoke-static {v3, v11, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1911
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set message done("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 1914
    const-string/jumbo v12, "lock_fmm_phone"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v12, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1915
    const-string v12, "SecurityPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set phones done("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :cond_3
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1918
    .local v5, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 1919
    .local v7, "sha1":[B
    const/4 v11, 0x2

    invoke-static {v7, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1920
    .local v2, "base64":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 1923
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1924
    .local v6, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1926
    const-string/jumbo v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 1928
    .local v10, "winMgr":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    .end local v2    # "base64":Ljava/lang/String;
    .end local v5    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "manager":Landroid/os/PowerManager;
    .end local v7    # "sha1":[B
    .end local v10    # "winMgr":Landroid/view/IWindowManager;
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1929
    :catch_0
    move-exception v4

    .line 1930
    .local v4, "ex":Ljava/lang/Exception;
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception is thrown when trying to lock out the device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 7
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    const/4 v2, 0x0

    .line 525
    .local v2, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 532
    .local v0, "buffer":[B
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 533
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 536
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 537
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 545
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object p2

    .line 535
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    if-eqz v3, :cond_3

    .line 542
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .line 538
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_1
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_2

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_2

    .line 542
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw v5

    .line 541
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_4

    .line 538
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 536
    :catch_3
    move-exception v1

    goto :goto_1

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_3
    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2530
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2535
    return-void
.end method

.method public onKeyguardLaunched()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 291
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 293
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 294
    .local v3, "index":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 295
    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    .end local v3    # "index":I
    :cond_0
    if-eqz v0, :cond_1

    const-string v9, "android.uid.systemui"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 299
    :cond_1
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "Only System UI can call this API"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 302
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 305
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    .line 306
    .local v8, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_6

    .line 307
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 308
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    .line 309
    .local v7, "personaId":I
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 310
    new-instance v6, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-direct {v6, p0, v9, v7, v12}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Landroid/content/Context;II)V

    .line 312
    .local v6, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v6    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-boolean v9, v4, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v12, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 324
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/PersonaInfo;
    .end local v7    # "personaId":I
    .end local v8    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_0
    return-void

    .line 334
    .restart local v8    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 335
    const-string v9, "SecurityPolicy"

    const-string v12, " Starting service "

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v5, "intentBanner":Landroid/content/Intent;
    const-string v9, "com.samsung.android.mdm"

    const-string v12, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v5, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v5    # "intentBanner":Landroid/content/Intent;
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 340
    .end local v8    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2543
    return-void
.end method

.method public powerOffDevice(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1587
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1588
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1590
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1593
    .local v2, "token":J
    :try_start_0
    const-string v4, "Security"

    const-string/jumbo v5, "powerOffDevice"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    :goto_0
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "powerOffDevice():EDM power off device start..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1600
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    .line 1601
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1603
    return-void

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readFile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, 0x0

    .line 1850
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1852
    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1887
    :cond_0
    :goto_0
    return v8

    .line 1855
    :cond_1
    const/4 v2, 0x0

    .line 1856
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1859
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1861
    .local v7, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .local v3, "fileStreamInp":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1864
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .local v5, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v0, v9, [B

    .line 1866
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_3

    .line 1867
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1872
    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .line 1873
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v7    # "mFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string v9, "SecurityPolicy"

    const-string/jumbo v10, "readFile IOException "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1877
    if-eqz v2, :cond_2

    .line 1878
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1883
    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 1884
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1885
    :catch_1
    move-exception v1

    .line 1886
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1869
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1870
    const/4 v8, 0x1

    .line 1877
    if-eqz v3, :cond_4

    .line 1878
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1883
    :cond_4
    :goto_4
    if-eqz v5, :cond_0

    .line 1884
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 1885
    :catch_2
    move-exception v1

    .line 1886
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1879
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1880
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1879
    .end local v0    # "buffer":[B
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .end local v7    # "mFile":Ljava/io/File;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .line 1880
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1876
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1877
    :goto_5
    if-eqz v2, :cond_5

    .line 1878
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1883
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 1884
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1887
    :cond_6
    :goto_7
    throw v8

    .line 1879
    :catch_5
    move-exception v1

    .line 1880
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1885
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1886
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1876
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_5

    .line 1872
    .end local v7    # "mFile":Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public readFileWithEncryptionAndCompression(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/List;
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 550
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v17, "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 552
    :cond_0
    const/16 v17, 0x0

    .line 633
    .end local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v17

    .line 554
    .restart local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v7, 0x0

    .line 555
    .local v7, "fileStreamInp":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 556
    .local v9, "fileStreamOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 559
    .local v3, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v15, "mFile":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".temp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v16, "mTempFile":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSessionKey()Ljava/security/Key;

    move-result-object v11

    .line 562
    .local v11, "inKey":Ljava/security/Key;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 564
    .local v12, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v11, :cond_3

    if-nez v12, :cond_6

    .line 616
    :cond_3
    if-eqz v3, :cond_4

    .line 617
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 623
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    :cond_5
    :goto_2
    if-eqz v9, :cond_1

    .line 629
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v6

    .line 631
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 619
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 568
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_4
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " output  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .local v8, "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_19
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 573
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .local v10, "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_27
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v9

    .line 574
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 575
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 578
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    invoke-interface {v11}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 580
    .local v13, "ks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_19
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 581
    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 583
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_9
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nfile  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "can read ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " last Md  ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v18, "AES/CBC/PKCS7Padding"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 586
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 587
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v10, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_28
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_9} :catch_23
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 590
    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v4, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    const/16 v18, 0x1000

    :try_start_a
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 591
    .local v5, "d":[B
    :goto_3
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    if-lez v14, :cond_9

    .line 592
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() :   len   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v14}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_a} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .line 605
    .end local v5    # "d":[B
    .end local v14    # "len":I
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .line 606
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_b
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 616
    if-eqz v3, :cond_7

    .line 617
    :try_start_c
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 622
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 623
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 628
    :cond_8
    :goto_6
    if-eqz v9, :cond_1

    .line 629
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 630
    :catch_4
    move-exception v6

    .line 631
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v5    # "d":[B
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "len":I
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :cond_9
    :try_start_f
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 600
    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v12}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_f} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 616
    if-eqz v4, :cond_a

    .line 617
    :try_start_10
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 622
    :cond_a
    :goto_7
    if-eqz v7, :cond_b

    .line 623
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 628
    :cond_b
    :goto_8
    if-eqz v10, :cond_1

    .line 629
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 630
    :catch_5
    move-exception v6

    .line 631
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 619
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 618
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v5    # "d":[B
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "len":I
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    .line 619
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 607
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 608
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_9
    :try_start_13
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 616
    if-eqz v3, :cond_c

    .line 617
    :try_start_14
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 622
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_c
    :goto_a
    if-eqz v7, :cond_d

    .line 623
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 628
    :cond_d
    :goto_b
    if-eqz v9, :cond_1

    .line 629
    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_0

    .line 630
    :catch_b
    move-exception v6

    .line 631
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_c
    move-exception v6

    .line 619
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 609
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 610
    .local v6, "e":Ljava/security/InvalidKeyException;
    :goto_c
    :try_start_17
    invoke-virtual {v6}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 616
    if-eqz v3, :cond_e

    .line 617
    :try_start_18
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 622
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :cond_e
    :goto_d
    if-eqz v7, :cond_f

    .line 623
    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 628
    :cond_f
    :goto_e
    if-eqz v9, :cond_1

    .line 629
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_0

    .line 630
    :catch_f
    move-exception v6

    .line 631
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .local v6, "e":Ljava/security/InvalidKeyException;
    :catch_10
    move-exception v6

    .line 619
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 611
    .end local v6    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v6

    .line 612
    .local v6, "e":Ljava/lang/Exception;
    :goto_f
    :try_start_1b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 616
    if-eqz v3, :cond_10

    .line 617
    :try_start_1c
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 622
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    if-eqz v7, :cond_11

    .line 623
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    .line 628
    :cond_11
    :goto_11
    if-eqz v9, :cond_1

    .line 629
    :try_start_1e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    goto/16 :goto_0

    .line 630
    :catch_13
    move-exception v6

    .line 631
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .local v6, "e":Ljava/lang/Exception;
    :catch_14
    move-exception v6

    .line 619
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 615
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 616
    :goto_12
    if-eqz v3, :cond_12

    .line 617
    :try_start_1f
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    .line 622
    :cond_12
    :goto_13
    if-eqz v7, :cond_13

    .line 623
    :try_start_20
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    .line 628
    :cond_13
    :goto_14
    if-eqz v9, :cond_1

    .line 629
    :try_start_21
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_16

    goto/16 :goto_0

    .line 630
    :catch_16
    move-exception v6

    .line 631
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v6    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v6

    .line 619
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 624
    .end local v6    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 615
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_12

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_12

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catchall_3
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_12

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v18

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_12

    .line 611
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_19
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1b
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_f

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 609
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1f
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_20
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 607
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_21
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_23
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_24
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 605
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    :catch_25
    move-exception v6

    goto/16 :goto_4

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catch_26
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_27
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_28
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public removeAccountsByType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1606
    if-nez p2, :cond_1

    .line 1607
    const/4 v10, 0x0

    .line 1642
    :cond_0
    :goto_0
    return v10

    .line 1609
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1610
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1612
    .local v11, "userId":I
    const/4 v10, 0x1

    .line 1613
    .local v10, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1615
    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 1616
    .local v3, "am":Landroid/accounts/AccountManager;
    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 1617
    .local v2, "accs":[Landroid/accounts/Account;
    if-eqz v2, :cond_2

    array-length v14, v2

    if-lez v14, :cond_2

    .line 1618
    move-object v4, v2

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v8, v4, v7

    .line 1619
    .local v8, "item":Landroid/accounts/Account;
    const-string v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "removeAccountsByType : account = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v14, v15, v0}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 1618
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1624
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v7    # "i$":I
    .end local v8    # "item":Landroid/accounts/Account;
    .end local v9    # "len$":I
    :cond_2
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType : return null"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1630
    .end local v2    # "accs":[Landroid/accounts/Account;
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :cond_3
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    if-nez v11, :cond_0

    .line 1633
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1635
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType"

    move-object/from16 v0, p2

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1637
    :catch_0
    move-exception v5

    .line 1638
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1626
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v5

    .line 1627
    .restart local v5    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 1628
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1358
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1359
    .local v0, "cert":Landroid/app/enterprise/CertificateInfo;
    const/4 v2, 0x4

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1360
    .local v1, "result":Z
    const/4 v2, 0x2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1361
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1362
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1364
    :cond_0
    return v1
.end method

.method public removeDeviceLockout(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 1940
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1941
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1942
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1943
    .local v2, "token":J
    const-string/jumbo v4, "lock_fmm_Message"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1944
    const-string/jumbo v4, "lock_fmm_phone"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1945
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1946
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 1947
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1948
    return-void
.end method

.method public resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1465
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1466
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1467
    .local v6, "userId":I
    const/4 v8, 0x0

    .line 1468
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1470
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has requested to clear credential storages"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1479
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x4

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v8

    .line 1481
    if-nez v6, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x2

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/2addr v8, v0

    .line 1487
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    .line 1488
    .local v9, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    and-int/2addr v8, v0

    .line 1490
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    .end local v9    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1497
    return v8

    .line 1491
    :catch_0
    move-exception v7

    .line 1492
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "resetCredentialStorage EX: "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1495
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1394
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 2132
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2133
    const/4 v2, 0x0

    .line 2162
    :cond_0
    :goto_0
    return v2

    .line 2136
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2137
    .local v3, "userId":I
    const/4 v2, 0x1

    .line 2141
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "deviceLastAccessDate"

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2144
    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 2147
    sget-object v4, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2150
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .line 2151
    .local v1, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    if-eqz v1, :cond_2

    .line 2152
    invoke-virtual {v1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->unregisterPersonaObserver()V

    .line 2154
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2158
    .end local v1    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2076
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 2091
    :goto_0
    return v1

    .line 2079
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2080
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 2084
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dodBannerVisible"

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    const/4 v1, 0x1

    .line 871
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 874
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v8

    .line 875
    .local v8, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    if-nez p2, :cond_0

    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    const-string v0, "SecurityPolicy"

    const-string v1, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 918
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_0
    return-void

    .line 880
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_0
    if-ne p2, v1, :cond_4

    .line 881
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    .line 896
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 897
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has requested encryption of external storage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 902
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 903
    .local v12, "userId":I
    if-nez v12, :cond_3

    .line 904
    new-instance v9, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    .local v9, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption"

    invoke-virtual {v9, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 907
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 916
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 883
    .end local v12    # "userId":I
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 913
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_0
    move-exception v7

    .line 914
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "is External Storage Encrypted?"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 908
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .restart local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_1
    move-exception v7

    .line 909
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 916
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v12    # "userId":I
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setInternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 814
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 862
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 819
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 821
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    const-string v2, "SecurityPolicy"

    const-string v3, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 825
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 826
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 829
    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 860
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 833
    :cond_3
    :try_start_3
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    if-eqz p2, :cond_4

    .line 836
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 839
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested encryption of internal storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 845
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 846
    .local v13, "userId":I
    if-nez v13, :cond_5

    .line 847
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 850
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_4
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 851
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 860
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 852
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v10

    .line 853
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 857
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v13    # "userId":I
    :catch_1
    move-exception v10

    .line 858
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "is Internal Storage Encrypted?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 860
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 968
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 970
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 979
    .local v3, "userId":I
    if-nez v3, :cond_0

    .line 980
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 985
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 986
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 992
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 971
    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireDeviceEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 975
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 987
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .line 988
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1017
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1019
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1028
    .local v3, "userId":I
    if-nez v3, :cond_0

    .line 1029
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1035
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 1020
    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1036
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .line 1037
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startBannerService(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 420
    sget-object v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "intentBanner":Landroid/content/Intent;
    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 425
    .end local v0    # "intentBanner":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 2539
    return-void
.end method

.method public unlockCredentialStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1316
    const/4 v2, 0x0

    .line 1317
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1319
    .local v4, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1321
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1322
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    const/4 v2, 0x1

    .line 1327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public wipeDevice(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 1572
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1575
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v2, "Security"

    const-string/jumbo v3, "wipeDevice"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1576
    const-string v2, "SecurityPolicy"

    const-string v3, "GearPolicy SetBooleanTypePolicy wipeDevice"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :goto_0
    return v5

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
