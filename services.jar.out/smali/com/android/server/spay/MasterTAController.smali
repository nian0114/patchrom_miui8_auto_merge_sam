.class public Lcom/android/server/spay/MasterTAController;
.super Lcom/android/server/spay/TAController;
.source "MasterTAController.java"


# static fields
.field private static final DEBUG:Z

.field private static final MASTER_PAY_CERT_PATH:Ljava/lang/String; = "/efs/mc/mc.dat"

.field private static final MASTER_PAY_CERT_PATH_NEW:Ljava/lang/String; = "/efs/mc/rst.dat"

.field private static final MASTER_PAY_CERT_PATH_X509:Ljava/lang/String; = "/efs/prov_data/mc_pay/mc_pay_sign.dat"

.field private static final MC_PAY_SERVICE_NAME:Ljava/lang/String; = "MC_PAY"

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/MasterTAController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 0
    .param p1, "taId"    # I
    .param p2, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/spay/TAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearDeviceCertificates()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/spay/TAController;->clearDeviceCertificates()Z

    move-result v0

    return v0
.end method

.method public copyMctoRst()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "copyMctoRst"

    invoke-static {v2}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/mc/mc.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/efs/mc/mc.dat"

    invoke-static {v2}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "certsign":[B
    const-string v2, "/efs/mc/rst.dat"

    invoke-static {v0, v2}, Lcom/android/server/spay/Utils;->writeFile([BLjava/lang/String;)Z

    move-result v2

    .end local v0    # "certsign":[B
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCertInfo()Landroid/spay/CertInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v7, "getCertInfo"

    invoke-static {v7}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    const-string v7, "/efs/mc/rst.dat"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "newf":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/efs/mc/mc.dat"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/prov_data/mc_pay/mc_pay_sign.dat"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "x509f":Ljava/io/File;
    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    .local v0, "certInfo":Landroid/spay/CertInfo;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "PaymentManagerService"

    const-string v8, "MCTAController::getCertInfo: MC X.509 certificate files do not exist. Lets create them"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MC_PAY"

    invoke-virtual {p0, v7}, Lcom/android/server/spay/MasterTAController;->generateDeviceCertificates(Ljava/lang/String;)Z

    move-result v5

    .local v5, "ret":Z
    if-nez v5, :cond_0

    const-string v7, "PaymentManagerService"

    const-string v8, "MC X.509 certificate creation failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "ret":Z
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "/efs/prov_data/mc_pay/mc_pay_sign.dat"

    invoke-static {v7}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "certsignNew":[B
    iget-object v7, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v8, "/efs/prov_data/mc_pay/mc_pay_sign.dat"

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "certsignNew":[B
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "/efs/mc/rst.dat"

    invoke-static {v7}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2    # "certsignNew":[B
    iget-object v7, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v8, "/efs/mc/rst.dat"

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "certsignNew":[B
    :goto_0
    iget-object v7, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x0

    .end local v0    # "certInfo":Landroid/spay/CertInfo;
    :cond_2
    return-object v0

    .restart local v0    # "certInfo":Landroid/spay/CertInfo;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "/efs/mc/mc.dat"

    invoke-static {v7}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "certsign":[B
    iget-object v7, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v8, "/efs/mc/mc.dat"

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "certsign":[B
    :cond_4
    const-string v7, "PaymentManagerService"

    const-string v8, "MasterTAController::getCertInfo: Error: MasterCard factory CASD certficate file not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 2
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-super/range {p0 .. p5}, Lcom/android/server/spay/TAController;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic makeSystemCall(I)Z
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->makeSystemCall(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 1
    .param p1, "x0"    # Landroid/spay/TACommandRequest;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCertInfo(Landroid/spay/CertInfo;)Z
    .locals 3
    .param p1, "certInfo"    # Landroid/spay/CertInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "setCertInfo"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p1, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v2, "/efs/mc/rst.dat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, "cert":[B
    const-string v1, "/efs/mc/rst.dat"

    invoke-static {v0, v1}, Lcom/android/server/spay/Utils;->writeFile([BLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic unloadTA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Lcom/android/server/spay/TAController;->unloadTA()V

    return-void
.end method
