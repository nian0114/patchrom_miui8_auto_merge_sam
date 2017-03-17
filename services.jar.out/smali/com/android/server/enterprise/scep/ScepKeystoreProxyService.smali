.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "context == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .local v6, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .local v5, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Landroid/security/IKeyChainService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyChainConnection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "backupUID":J
    invoke-virtual {p0, v3, v5, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .local v4, "isBound":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_2
    new-instance v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v5, v8, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V

    return-object v9
.end method

.method private broadcastStorageChange()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkCaller()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 8
    .param p1, "keyData"    # [B

    .prologue
    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v4, :cond_1

    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_0
    :goto_0
    return v5

    .restart local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "algId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "System Service"

    const-string v7, "Failed to parse key data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeUidWithUserID(II)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .prologue
    if-gez p1, :cond_0

    .end local p2    # "uid":I
    :goto_0
    return p2

    .restart local p2    # "uid":I
    :cond_0
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    goto :goto_0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .locals 10
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, "UidoftheCert":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .local v5, "processId":I
    const/4 v1, 0x0

    .local v1, "UidoftheCertSystem":I
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p2, :cond_5

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: processId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x0

    .local v2, "bDeleted":Z
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .local v4, "mAndroid":Landroid/security/KeyStore;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "bDeleted":Z
    .end local v4    # "mAndroid":Landroid/security/KeyStore;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry return exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v0, 0x3f2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v1, 0x3f2

    goto/16 :goto_1

    .restart local v2    # "bDeleted":Z
    .restart local v4    # "mAndroid":Landroid/security/KeyStore;
    :cond_6
    const/4 v2, 0x1

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete user cert: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_9

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not exist : USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const/4 v2, 0x1

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_c

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not exist : CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const/4 v2, 0x1

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    if-ne v6, v2, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_e
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not exist : USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .locals 12
    .param p1, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v9

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .local v4, "mAndroid":Landroid/security/KeyStore;
    new-instance v6, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v6}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    .local v6, "mCertObj":Lcom/samsung/android/cepproxyks/CertificateAKS;
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .local v1, "UidoftheCertWifi":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I

    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I

    invoke-virtual {v4, v8, v10}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v7

    .local v7, "mWificert":[B
    if-nez v7, :cond_5

    move-object v6, v9

    goto :goto_0

    .end local v7    # "mWificert":[B
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x3f2

    iput v8, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v9

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "UidoftheCertSystem":I
    .restart local v1    # "UidoftheCertWifi":I
    .restart local v7    # "mWificert":[B
    :cond_5
    :try_start_1
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v5

    .local v5, "mCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/security/cert/Certificate;

    .local v2, "cert":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v2, v10

    iput-object v2, v6, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .locals 2
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .locals 8
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uidscep":I
    iget-object v7, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .local v4, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_2

    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "mCertArray":[Ljava/security/cert/Certificate;
    .end local v5    # "uidscep":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4
    throw v6
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .locals 10
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .param p2, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v0, 0x0

    .local v0, "UidoftheCert":I
    const/16 v0, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .local v4, "keystoreService":Landroid/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCaCertificate([B)V
    .locals 6
    .param p1, "caCertificate"    # [B

    .prologue
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .local v3, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_1

    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CA Certificate parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v3

    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_0
    return-void

    .restart local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CA Certificate successfully installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "IOException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CertificateException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .locals 15
    .param p1, "certificate"    # Lcom/samsung/android/cepproxyks/CertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    if-nez p1, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .local v4, "id":J
    :try_start_0
    const-string v11, "PKCS12"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .local v8, "mJavaKey":Ljava/security/KeyStore;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v7, v11, [B

    .local v7, "mCertficate":[B
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .local v10, "mcert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v9

    .local v9, "mPriv":Ljava/security/Key;
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/security/cert/Certificate;

    .local v2, "certchain":[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    aput-object v10, v2, v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    sget-boolean v11, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v11, :cond_2

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_6

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .local v6, "keystoreService":Landroid/security/KeyStore;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v6    # "keystoreService":Landroid/security/KeyStore;
    :cond_6
    :try_start_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .restart local v6    # "keystoreService":Landroid/security/KeyStore;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_8

    sget-boolean v11, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "SCEPKeystoreProxyService"

    const-string v12, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_a

    sget-boolean v11, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v11, :cond_9

    const-string v11, "SCEPKeystoreProxyService"

    const-string v12, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    :try_start_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_c

    sget-boolean v11, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v11, :cond_b

    const-string v11, "SCEPKeystoreProxyService"

    const-string v12, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    const/4 v11, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_c
    const/4 v11, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "certchain":[Ljava/security/cert/Certificate;
    .end local v6    # "keystoreService":Landroid/security/KeyStore;
    .end local v7    # "mCertficate":[B
    .end local v8    # "mJavaKey":Ljava/security/KeyStore;
    .end local v9    # "mPriv":Ljava/security/Key;
    .end local v10    # "mcert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_7
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v11, 0x2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_8
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v11, 0x2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_9
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v11, 0x3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v11, 0x4

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_b
    invoke-virtual {v3}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v11, 0x2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_5
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v11, 0x4

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "SCEPKeystoreProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAliasExists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .local v1, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .local v3, "mAndroid":Landroid/security/KeyStore;
    if-eqz p2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    move v4, v5

    goto/16 :goto_0

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    move v4, v5

    goto/16 :goto_0

    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    .end local v3    # "mAndroid":Landroid/security/KeyStore;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "mUserKey":Ljava/security/PrivateKey;
    return-object v2

    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "mUserKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
