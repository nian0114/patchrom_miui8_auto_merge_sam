.class Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field public mProfileId:I

.field private final mService:Landroid/security/IKeyChainService;

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 7
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "adapter"    # Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p3, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "x509Cert"    # Ljava/security/cert/X509Certificate;
    .param p6, "profileId"    # I

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput p6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    .line 658
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mService:Landroid/security/IKeyChainService;

    .line 659
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 660
    iput-object p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 661
    iput-object p4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 662
    iput-object p5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 664
    new-instance v4, Landroid/net/http/SslCertificate;

    invoke-direct {v4, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 666
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "cn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "o":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "ou":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 674
    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 675
    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 690
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mService:Landroid/security/IKeyChainService;

    iget-object v6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2400(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    return-void

    .line 677
    :cond_0
    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 678
    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 682
    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 683
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 685
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 686
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception while checking if alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is deleted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/IKeyChainService;
    .param p2, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p3, "x2"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/security/cert/X509Certificate;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    .prologue
    .line 638
    invoke-direct/range {p0 .. p6}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    .locals 3
    .param p1, "o"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 699
    .local v0, "primary":I
    if-eqz v0, :cond_0

    .line 702
    .end local v0    # "primary":I
    :goto_0
    return v0

    .restart local v0    # "primary":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 638
    check-cast p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 705
    instance-of v1, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 706
    const/4 v1, 0x0

    .line 709
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 708
    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 709
    .local v0, "other":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
