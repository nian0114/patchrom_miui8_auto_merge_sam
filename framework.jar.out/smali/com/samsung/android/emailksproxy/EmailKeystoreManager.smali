.class public Lcom/samsung/android/emailksproxy/EmailKeystoreManager;
.super Ljava/lang/Object;
.source "EmailKeystoreManager.java"


# static fields
.field public static final KEYSTORE_STATUS_LOCKED:I = 0x2

.field public static final KEYSTORE_STATUS_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_STATUS_UNKNOWN:I = 0x0

.field public static final KEYSTORE_STATUS_UNLOCKED:I = 0x1


# instance fields
.field private mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    return-void
.end method

.method public static getService()Lcom/samsung/android/emailksproxy/EmailKeystoreManager;
    .locals 2

    .prologue
    new-instance v0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;

    const-string v1, "emailksproxy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public getKeystoreStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    invoke-interface {v0}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;->getKeystoreStatus()I

    move-result v0

    return v0
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;->grantAccessForAKS(ILjava/lang/String;)V

    return-void
.end method

.method public installCACert(Lcom/samsung/android/emailksproxy/CertificateAKS;)I
    .locals 1
    .param p1, "caCert"    # Lcom/samsung/android/emailksproxy/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    invoke-interface {v0, p1}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;->installCACert(Lcom/samsung/android/emailksproxy/CertificateAKS;)I

    move-result v0

    return v0
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/emailksproxy/CertByte;Ljava/lang/String;[CZI)I
    .locals 6
    .param p1, "certificate"    # Lcom/samsung/android/emailksproxy/CertByte;
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
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;->installCertificateInAndroidKeyStore(Lcom/samsung/android/emailksproxy/CertByte;Ljava/lang/String;[CZI)I

    move-result v0

    return v0
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/EmailKeystoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;->isAliasExists(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
