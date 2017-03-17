.class public Lcom/ipsec/client/IPsecConnection;
.super Ljava/lang/Object;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;,
        Lcom/ipsec/client/IPsecConnection$IkeIntegrity;,
        Lcom/ipsec/client/IPsecConnection$IPsecGroup;,
        Lcom/ipsec/client/IPsecConnection$IkeGroup;,
        Lcom/ipsec/client/IPsecConnection$IkeEncryption;,
        Lcom/ipsec/client/IPsecConnection$IkeVersion;,
        Lcom/ipsec/client/IPsecConnection$IPsecLifeType;,
        Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;,
        Lcom/ipsec/client/IPsecConnection$IPsecEncryption;,
        Lcom/ipsec/client/IPsecConnection$TunnelMode;,
        Lcom/ipsec/client/IPsecConnection$IPVersion;,
        Lcom/ipsec/client/IPsecConnection$HostAuthentication;,
        Lcom/ipsec/client/IPsecConnection$EapMethod;,
        Lcom/ipsec/client/IPsecConnection$IdentityType;
    }
.end annotation


# static fields
.field private static final DEFAULT_UPDATE_TIMEOUT:I = 0xa

.field protected static final IPSEC_CONNECTION_VERSION:Ljava/lang/String; = "5"

.field public static final NIST_SP_800_131A_ACCEPTABLE_ALGORITHMS:I = 0x70


# instance fields
.field private IKEV2_FRAGMENTATION_LIMIT:I

.field private PMTU_MIN:I

.field protected aggressiveMode:Z

.field protected algorithmSecurityStrength:I

.field protected caCertificate:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected caCertificateData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field protected certCheckRevocation:Z

.field protected certificate:Ljava/security/cert/X509Certificate;

.field protected certificateData:[B

.field protected connectTimeout:I

.field private connectionId:I

.field protected disableIkev2Fragmentation:Z

.field protected disableSplitTunneling:Z

.field protected dpdTimeout:I

.field protected eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field protected eapReAuthData:[B

.field protected eapReAuthPassword:Ljava/lang/String;

.field protected gateway:Ljava/lang/String;

.field protected globalDnsConfiguration:Z

.field protected hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

.field protected hybridModeConnection:Z

.field protected ikeEncryption:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeEncryption;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeGroup:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeIntegrity:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeLife:I

.field protected ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

.field protected ikeWindowSize:I

.field protected ikev2FragmentationLimit:I

.field protected imCertificate:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected imCertificateData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field protected internalSubnet:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecEncryption:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecGroup:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecIntegrity:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

.field protected ipsecLifeValue:I

.field protected mobike:Z

.field protected name:Ljava/lang/String;

.field protected nattKeepaliveTimeout:I

.field protected networkInterface:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecNetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected ownIdentity:Ljava/lang/String;

.field protected ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected password:Ljava/lang/String;

.field protected pmtuLimit:I

.field protected preSharedKey:Ljava/lang/String;

.field protected privateKey:Ljava/security/PrivateKey;

.field protected privateKeyData:[B

.field protected privateKeyFormat:Ljava/lang/String;

.field protected remoteIdentity:Ljava/lang/String;

.field protected remoteIdentityEnforce:Z

.field protected remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected requestIkeCfgAttrs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected requestedRACIPv4:Ljava/lang/String;

.field protected requestedRACIPv6:Ljava/lang/String;

.field protected secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field protected secondOwnIdentity:Ljava/lang/String;

.field protected secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected secondPassword:Ljava/lang/String;

.field protected secondUsername:Ljava/lang/String;

.field protected subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

.field protected tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

.field protected userAuthentication:Z

.field protected username:Ljava/lang/String;

.field protected version:Ljava/lang/String;

.field protected virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field protected virtualAdapterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x500

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->IKEV2_FRAGMENTATION_LIMIT:I

    new-instance v0, Ljava/lang/String;

    const-string v1, "5"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    const/16 v0, 0xa

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    iput-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->IKEV2_FRAGMENTATION_LIMIT:I

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-void
.end method


# virtual methods
.method public addCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .local v0, "encoded":[B
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "encoded":[B
    :cond_0
    return-void
.end method

.method public addEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 3
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "EAP method already set"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public addGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V
    .locals 2
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V
    .locals 2
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V
    .locals 2
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V
    .locals 2
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addImCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .local v0, "encoded":[B
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "encoded":[B
    :cond_0
    return-void
.end method

.method public addInterface(Lcom/ipsec/client/IPsecNetworkInterface;)V
    .locals 1
    .param p1, "iface"    # Lcom/ipsec/client/IPsecNetworkInterface;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecNetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addInternalSubnet(Ljava/lang/String;)V
    .locals 1
    .param p1, "subnetAddr"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V
    .locals 1
    .param p1, "attribute"    # Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearCaCertificates()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearEapMethods()V
    .locals 1

    .prologue
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-void
.end method

.method public clearGroup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearIPsecEncryption()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearIPsecGroup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearIPsecIntegrity()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearIkeEncryption()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearIkeIntegrity()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearImCertificates()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearInterfaces()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    return-void
.end method

.method public clearInternalSubnets()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    return-void
.end method

.method public clearRequestIkeCfgAttributes()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public getAlgorithmSecurityStrength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    return v0
.end method

.method protected getAllCaCertificateDatas()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllCaCertificates()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllGroups()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecEncryptions()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecGroups()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecGroup;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecIntegrities()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecIntegritys()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecIntegrities()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllIkeEncryptions()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeEncryption;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIkeIntegrities()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIkeIntegritys()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIkeIntegrities()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method protected getAllImCertificateDatas()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllImCertificates()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllRequestIkeCfgAttributes()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getCertCheckRevocation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method protected getCertificateData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    return v0
.end method

.method protected declared-synchronized getConnectionId()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDpdTimeout()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    return v0
.end method

.method public getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public getEapMethods()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$EapMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .local v4, "methods":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$EapMethod;>;"
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$EapMethod;->values()[Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v0

    .local v0, "arr$":[Lcom/ipsec/client/IPsecConnection$EapMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    iget-object v5, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    if-ne v5, v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v1    # "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    :cond_0
    return-object v4

    .restart local v1    # "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getEapReAuthData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    return-object v0
.end method

.method public getEapReAuthPassword()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGlobalDnsConfiguration()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    return v0
.end method

.method public getGroup()Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0
.end method

.method public getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    return-object v0
.end method

.method public getIPsecEncryption()Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0
.end method

.method public getIPsecGroup()Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecGroups()Ljava/util/Vector;

    move-result-object v0

    .local v0, "groups":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecGroup;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0
.end method

.method public getIPsecIntegrity()Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0
.end method

.method public getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    return-object v0
.end method

.method public getIPsecLifeValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    return v0
.end method

.method public getIkeEncryption()Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0
.end method

.method public getIkeIntegrity()Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0
.end method

.method public getIkeLife()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    return v0
.end method

.method public getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    return-object v0
.end method

.method public getIkeWindowSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    return v0
.end method

.method public getIkev2FragmentationLimit()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    return v0
.end method

.method public getInterfaces()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecNetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalSubnets()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNattKeepaliveTimeout()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    return v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getPMTULimit()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->pmtuLimit:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method protected getPrivateKeyData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    return-object v0
.end method

.method protected getPrivateKeyFormat()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteIdentityEnforce()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    return v0
.end method

.method public getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getRequestedRacIPv4Address()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedRacIPv6Address()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public getSecondOwnIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getSecondPassword()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecondUsername()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSubnetType()Lcom/ipsec/client/IPsecConnection$IPVersion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0
.end method

.method public getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    return-object v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public isAggressiveMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    return v0
.end method

.method public isHybridMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    return v0
.end method

.method public isIPsecAntiReplay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isIkev2FragmentationDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    return v0
.end method

.method public isMobike()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    return v0
.end method

.method public isPerfectForwardSecrecy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSplitTunnelingDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    return v0
.end method

.method public isUserAuthentication()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    return v0
.end method

.method public setAggressiveMode(Z)V
    .locals 0
    .param p1, "aggressiveMode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    return-void
.end method

.method public setAlgorithmSecurityStrength(I)V
    .locals 0
    .param p1, "algorithmSecurityStrength"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearCaCertificates()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addCaCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public setCertCheckRevocation(Z)V
    .locals 0
    .param p1, "certCheckRevocation"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->certificate:Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    return-void
.end method

.method protected declared-synchronized setConnectionId(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDpdTimeout(I)V
    .locals 0
    .param p1, "dpdTimeout"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    return-void
.end method

.method public setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 0
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    :cond_0
    return-void
.end method

.method public setEapReAuthData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    return-void
.end method

.method public setEapReAuthPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 4
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "gateway=null"

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isValidFqdn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gateway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    return-void
.end method

.method public setGlobalDnsConfiguration(Z)V
    .locals 0
    .param p1, "globalDnsConfiguration"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    return-void
.end method

.method public setGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearGroup()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V

    return-void
.end method

.method public setHostAuthentication(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)V
    .locals 0
    .param p1, "hostAuthentication"    # Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    return-void
.end method

.method public setHybridMode(Z)V
    .locals 0
    .param p1, "hybridModeConnection"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    return-void
.end method

.method public setIPsecAntiReplay(Z)V
    .locals 0
    .param p1, "antiReplay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V
    .locals 0
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecEncryption()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V

    return-void
.end method

.method public setIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecGroup()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V

    return-void
.end method

.method public setIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V
    .locals 0
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecIntegrity()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V

    return-void
.end method

.method public setIPsecLife(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;I)V
    .locals 3
    .param p1, "lifeType"    # Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .param p2, "lifeValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-gez p2, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipsec-life="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    iput p2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    return-void
.end method

.method public setIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V
    .locals 0
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIkeEncryption()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V

    return-void
.end method

.method public setIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V
    .locals 0
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIkeIntegrity()V

    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V

    return-void
.end method

.method public setIkeLife(I)V
    .locals 3
    .param p1, "life"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-gez p1, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ike-life="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    return-void
.end method

.method public setIkeVersion(Lcom/ipsec/client/IPsecConnection$IkeVersion;)V
    .locals 0
    .param p1, "version"    # Lcom/ipsec/client/IPsecConnection$IkeVersion;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    return-void
.end method

.method public setIkeWindowSize(I)V
    .locals 0
    .param p1, "windowSize"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    return-void
.end method

.method public setIkev2FragmentationDisabled(Z)V
    .locals 0
    .param p1, "disableIkev2Fragmentation"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    return-void
.end method

.method public setIkev2FragmentationLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    return-void
.end method

.method public setMobike(Z)V
    .locals 0
    .param p1, "mobike"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNattKeepaliveTimeout(I)V
    .locals 0
    .param p1, "nattKeepaliveTimeout"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    return-void
.end method

.method public setOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own-identity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "own-identity-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    return-void
.end method

.method public setPMTULimit(I)V
    .locals 3
    .param p1, "pmtuLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->pmtuLimit:I

    return-void

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMTULimit too low < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPerfectForwardSecrecy(Z)V
    .locals 0
    .param p1, "perfectForwardSecrecy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "preSharedKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre-shared-key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  key too long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->privateKey:Ljava/security/PrivateKey;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKey([B)V
    .locals 1
    .param p1, "privateKey"    # [B

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKeyAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "alg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setPrivateKeyLength(I)V
    .locals 0
    .param p1, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;Z)V

    return-void
.end method

.method public setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;
    .param p3, "remoteIdentityEnforce"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote-identity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remote-identity-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-boolean p3, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    return-void
.end method

.method public setRequestedRacIPv4Address(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipv4Address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "rac-ipv4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestedRacIPv6Address(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "rac-ipv6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setSecondEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 0
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    :cond_0
    return-void
.end method

.method public setSecondOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 3
    .param p1, "secondOwnIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "secondOwnIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second-own-identity= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "second-own-identity-type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    return-void
.end method

.method public setSecondPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecondUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSplitTunnelingDisabled(Z)V
    .locals 0
    .param p1, "disableSplitTunneling"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    return-void
.end method

.method public setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V
    .locals 1
    .param p1, "subnetType"    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0
.end method

.method public setTunnelMode(Lcom/ipsec/client/IPsecConnection$TunnelMode;)V
    .locals 0
    .param p1, "tunnelMode"    # Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    return-void
.end method

.method public setUserAuthentication(Z)V
    .locals 0
    .param p1, "userAuthentication"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVirtualAdapterConfiguration(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)V
    .locals 0
    .param p1, "virtualAdapterConfiguration"    # Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    return-void
.end method

.method public setVirtualAdapterName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPsecConnection{connectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gateway=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subnetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", internalSubnet=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interface=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hostAuthentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userAuthentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tunnelMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableSplitTunneling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableIKEv2Fragmentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikev2FragmentationLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecLifeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecLifeValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecIntegrity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeLife="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aggressiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeIntegrity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mobike="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeWindowSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentityEnforce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", certCheckRevocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", algorithmSecurityStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    sget-object v2, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ownIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ownIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", username=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", password={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", preSharedKey={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapReAuthPassword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapReAuthData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapMethod=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dpdTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nattKeepaliveTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hybridModeConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caCertificateData={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imCertificateData={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", certificateData={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privateKeyData={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privateKeyFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestedRACIPv4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestedRACIPv6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtualAdapterName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtualAdapterConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", globalDnsConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestIkeCfgAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secondEapMethod=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", secondOwnIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", secondOwnIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, ", ownIdentityType=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", ownIdentity=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", username=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v1, ", password=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-string v1, ", preSharedKey=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string v1, "null"

    goto/16 :goto_3

    :cond_5
    const-string v1, "null"

    goto/16 :goto_4

    :cond_6
    const-string v1, ", certificateData=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    const-string v1, ", privateKeyData=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method
