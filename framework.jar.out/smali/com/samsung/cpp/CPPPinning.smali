.class public Lcom/samsung/cpp/CPPPinning;
.super Ljava/lang/Object;
.source "CPPPinning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPPinning$CustomTrustManager;
    }
.end annotation


# static fields
.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final END:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final MASTER_PINNING_SERVER_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDjTCCAnWgAwIBAgIJAJB9dHQSUU1ZMA0GCSqGSIb3DQEBCwUAMF0xCzAJBgNV\nBAYTAktSMRIwEAYDVQQIDAlLeXVuZ2tpZG8xDjAMBgNVBAcMBVN1d29uMRwwGgYD\nVQQKDBNTYW1zdW5nIEVsZWN0cm9uaWNzMQwwCgYDVQQLDANCMkIwHhcNMTUwNzIx\nMDkwMTA0WhcNMzUwNzE2MDkwMTA0WjBdMQswCQYDVQQGEwJLUjESMBAGA1UECAwJ\nS3l1bmdraWRvMQ4wDAYDVQQHDAVTdXdvbjEcMBoGA1UECgwTU2Ftc3VuZyBFbGVj\ndHJvbmljczEMMAoGA1UECwwDQjJCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEAuA3G8qE4Uljz/+oXTC/mhYs/y0ly+Qq2RCE+cYeLA7Hpmb0PRbzjk6RV\ngXs1hbpmaau9DZxzJGif4dyM6D+b1H9RIjWSQrJ6BxoeckDyLohw8n3zHF63anA4\nmvLs4WKh44jlgrW+fAnQ8QCTSeDybvqGzYDOrfEdaQqLXjaJhIMfNa2TegQlXy+6\nT0A8kIiYza9mbohf+HfhhPajDDG92Weuf8mzi+/sW6faY/sNmQ3meD3Yxv3S0AAh\nbodO0aopJE8n9/21S4HL1B582WCCkCmBZ2HaIZ5+PXYb+iXKzfhYMTNCrCLb3Cwz\n8QGEECj7hcyqxT4Ht/dy9dryiPHTBQIDAQABo1AwTjAdBgNVHQ4EFgQUV/4SiqEp\nt7q+OTouCWhIRs8gV3gwHwYDVR0jBBgwFoAUV/4SiqEpt7q+OTouCWhIRs8gV3gw\nDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEALjxOBO7i78pjCcGR8/yB\nIFk/Hb5dAU4N3Yb0FtaocIUg0KxOQSGwlUsynT1Ttrd4OGsshTaWuOGcXtvgC+UI\nSL2ygnNPsgU29ZjVGE82gnmf0dU2I5nzNXQF5XsAlYa/EY4q9YlLuSXnO3t1WvRG\nzl9Qu5QrGWre3FgzNPKkWdopsNDcd52BLS5OHyBMOqygt95kmLae/+76FYa8qsTB\n86JCAqW6QNWTgJ9t59CJ/lsgjV8IKguBRuulmwUrvz5QYKz2Yqwnd24to8lNj6qz\nWps5mc3b+fuJWDhSQznjL4JTXnPZ17rG7jVTVzv1lOZBfY+BJjVOetPEZLCaJw+X\nkQ==\n-----END CERTIFICATE-----"

.field private static final MASTER_PINNING_SERVER_URL:Ljava/lang/String; = "https://s3-us-west-2.amazonaws.com/knoxservices/pinning-prod/service/cell/leafcert"

.field public static final PINNING_EXCEPTION_STRING:Ljava/lang/String; = "[pinning]"

.field private static final TAG:Ljava/lang/String; = "CPPPinning"

.field private static final TRUST_PREFERENCE:Ljava/lang/String; = "pintrust"

.field private static final TRUST_PREFERENCE_KEY:Ljava/lang/String; = "shelf"

.field private static instance:Lcom/samsung/cpp/CPPPinning;

.field private static mResponse:Lcom/samsung/cpp/CPPPinningResponse;


# instance fields
.field private cv:Landroid/os/ConditionVariable;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning;->mContext:Landroid/content/Context;

    .line 73
    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning;->cv:Landroid/os/ConditionVariable;

    .line 88
    const-string v0, "CPPPinning"

    const-string v1, "@Pinning constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/samsung/cpp/CPPPinning;->setDefaultCerts()V

    .line 90
    iput-object p1, p0, Lcom/samsung/cpp/CPPPinning;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/cpp/CPPPinning;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v0, "CPPPinning"

    const-string v1, "@getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/samsung/cpp/CPPPinning;

    invoke-direct {v0, p0}, Lcom/samsung/cpp/CPPPinning;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    .line 84
    :cond_0
    sget-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    return-object v0
.end method

.method public static pemToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "pemCert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 242
    const-string v6, "CPPPinning"

    const-string v8, "@pemToX509"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v3, 0x0

    .line 246
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez p0, :cond_0

    .line 247
    const-string v6, "CPPPinning"

    const-string v8, "@pemToX509 - Cert String is Null!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 265
    :goto_0
    return-object v6

    .line 252
    :cond_0
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 253
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-static {p0}, Lcom/samsung/cpp/CPPPinning;->readPemBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 254
    .local v2, "byteArray":[B
    if-eqz v2, :cond_1

    .line 255
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    .local v1, "bit":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bit":Ljava/io/ByteArrayInputStream;
    :cond_1
    move-object v6, v3

    .line 258
    goto :goto_0

    .line 260
    .end local v2    # "byteArray":[B
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v5

    .line 261
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "CPPPinning"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@pemToX509 - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 265
    goto :goto_0
.end method

.method private static readPemBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 269
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "certStrReader":Ljava/io/StringReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v2, "pemReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 274
    const-string v3, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const-string v3, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_0
    const-string v3, "-----END CERTIFICATE-----"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-----END CERTIFICATE-----"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    :cond_1
    const-string v3, "-----END CERTIFICATE-----"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 283
    :goto_0
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPinnedCerts()Lcom/samsung/cpp/CPPPinningResponse;
    .locals 9

    .prologue
    .line 149
    const-string v6, "CPPPinning"

    const-string v7, "@readPinnedCerts"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v6, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    if-eqz v6, :cond_3

    .line 152
    const-string v6, "CPPPinning"

    const-string v7, "@readPinnedCerts - done."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v6, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    invoke-virtual {v6}, Lcom/samsung/cpp/CPPPinningResponse;->getData()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/cpp/ResponseData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/cpp/ResponseData;

    .line 157
    .local v1, "each":Lcom/samsung/cpp/ResponseData;
    iget-object v6, v1, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "eachCA":Ljava/lang/String;
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@readPinnedCerts CA : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v2    # "eachCA":Ljava/lang/String;
    :cond_1
    iget-object v6, v1, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "eachUrl":Ljava/lang/String;
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@readPinnedCerts URL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v1    # "each":Lcom/samsung/cpp/ResponseData;
    .end local v3    # "eachUrl":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v6, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    .line 168
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/cpp/ResponseData;>;"
    :goto_2
    return-object v6

    .line 167
    :cond_3
    const-string v6, "CPPPinning"

    const-string v7, "@readPinnedCerts - done. Null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getTrustManagers(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;
    .locals 10
    .param p1, "endpointUrl"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 103
    const-string v6, "CPPPinning"

    const-string v7, "@getTrustManagers"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/samsung/cpp/CPPPinning;->readPinnedCerts()Lcom/samsung/cpp/CPPPinningResponse;

    move-result-object v3

    .line 106
    .local v3, "pinnedCertsStore":Lcom/samsung/cpp/CPPPinningResponse;
    const/4 v2, 0x0

    .line 108
    .local v2, "listOfCertsTrusted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "https://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    const-string v6, "https://"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    :goto_0
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "split":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":443"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@getTrustManagers - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v6, 0x1

    new-array v4, v6, [Ljavax/net/ssl/TrustManager;

    .line 122
    .local v4, "result":[Ljavax/net/ssl/TrustManager;
    if-eqz v3, :cond_4

    .line 123
    invoke-virtual {v3}, Lcom/samsung/cpp/CPPPinningResponse;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/cpp/ResponseData;

    .line 124
    .local v0, "eachEntry":Lcom/samsung/cpp/ResponseData;
    iget-object v6, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listOfCertsTrusted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .restart local v2    # "listOfCertsTrusted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@getTrustManagers listOfCertsTrusted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "eachEntry":Lcom/samsung/cpp/ResponseData;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    if-nez v2, :cond_5

    .line 134
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@getTrustManagers - no pinned certificate found for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@getTrustManagers - strict mode applied for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v6, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;-><init>(Lcom/samsung/cpp/CPPPinning;Ljava/lang/String;Ljava/util/List;)V

    aput-object v6, v4, v9

    .line 143
    :goto_2
    const-string v6, "CPPPinning"

    const-string v7, "@getTrustManagers - done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v4

    .line 110
    .end local v4    # "result":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_3
    const-string v6, "http://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    const-string v6, "http://"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 131
    .restart local v4    # "result":[Ljavax/net/ssl/TrustManager;
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_4
    const-string v6, "CPPPinning"

    const-string v7, "@getTrustManagers - pinned cert store has not been formed yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :cond_5
    const-string v6, "CPPPinning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@getTrustManagers - found pinned certificates for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v6, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;

    invoke-direct {v6, p0, p1, v2}, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;-><init>(Lcom/samsung/cpp/CPPPinning;Ljava/lang/String;Ljava/util/List;)V

    aput-object v6, v4, v9

    goto :goto_2
.end method

.method public setDefaultCerts()V
    .locals 4

    .prologue
    .line 173
    new-instance v2, Lcom/samsung/cpp/CPPPinningResponse;

    invoke-direct {v2}, Lcom/samsung/cpp/CPPPinningResponse;-><init>()V

    sput-object v2, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    .line 175
    new-instance v0, Lcom/samsung/cpp/ResponseData;

    invoke-direct {v0}, Lcom/samsung/cpp/ResponseData;-><init>()V

    .line 176
    .local v0, "cert1":Lcom/samsung/cpp/ResponseData;
    new-instance v1, Lcom/samsung/cpp/ResponseData;

    invoke-direct {v1}, Lcom/samsung/cpp/ResponseData;-><init>()V

    .line 178
    .local v1, "cert2":Lcom/samsung/cpp/ResponseData;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    .line 183
    iget-object v2, v0, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    const-string v3, "-----BEGIN CERTIFICATE-----MIIEzTCCA7WgAwIBAgIQPw43HyOH/HxLE6TVs4IPyTANBgkqhkiG9w0BAQsFADBBMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMdGhhd3RlLCBJbmMuMRswGQYDVQQDExJ0aGF3dGUgU1NMIENBIC0gRzIwHhcNMTUxMDEzMDAwMDAwWhcNMTcwMTExMjM1OTU5WjCBhTELMAkGA1UEBhMCS1IxETAPBgNVBAgTCEd5ZW9uZ2dpMQ4wDAYDVQQHFAVTdXdvbjEkMCIGA1UEChQbU0FNU1VORyBFTEVDVFJPTklDUyBDTywgTFREMRYwFAYDVQQLFA1CMkIgUiZEIEdyb3VwMRUwEwYDVQQDFAwqLnNlY2IyYi5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMWwc2IA5gKJbDWo/hu1+Xa3vvz4UJijh/8pRQ7HLxhjs6IhO8iI1b36mvCcwV1fi2OHxpxDkodeaVUVt5PohL3dflSf98Zd5af0TtRhY0wwCam1Tz712dtnYWfv29rsg7SBMw4fMXvqajxPZkJl1354xwERfu4kgg0YT5MpaPD0u5PWJ2g/Ghm0zGpITewx+1994CJFyo73s3J+L1Ji8conqstfAzjZ/gmxzhoc3yZjk/+rqFRyVBIaLmNDdrUSsxoPEz+KXjKtTh9dsLkHYddfDpKWlmPPvjxnMRqDlS0nQ/9HF/5kdpj5NWT2O8bZNvIYaahQJRNLp1CtA9ZHpLAgMBAAGjggF6MIIBdjAjBgNVHREEHDAaggwqLnNlY2IyYi5jb22CCnNlY2IyYi5jb20wCQYDVR0TBAIwADBuBgNVHSAEZzBlMGMGBmeBDAECAjBZMCYGCCsGAQUFBwIBFhpodHRwczovL3d3dy50aGF3dGUuY29tL2NwczAvBggrBgEFBQcCAjAjDCFodHRwczovL3d3dy50aGF3dGUuY29tL3JlcG9zaXRvcnkwDgYDVR0PAQH/BAQDAgWgMB8GA1UdIwQYMBaAFMJPSFf80U+awF04fQ4F29kutVJgMCsGA1UdHwQkMCIwIKAeoByGGmh0dHA6Ly90ai5zeW1jYi5jb20vdGouY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjBXBggrBgEFBQcBAQRLMEkwHwYIKwYBBQUHMAGGE2h0dHA6Ly90ai5zeW1jZC5jb20wJgYIKwYBBQUHMAKGGmh0dHA6Ly90ai5zeW1jYi5jb20vdGouY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQAUvTU+Hv62Vmsi7H1eAz/dsvbkydCGybrs4DM8DLnWSvfT9/CNqTc7fWDahlwxf4WtDfq06ow0b/bR+EiyFdkLh2jcwHPqr6xZvwWoWgu/4KGDB7n1qVIIfx43AX2L30K8DxDdrA75oZ8sxoz0mGdqhyQNXihJmhDUXd4wIeFtAsavG+l6t57IFMfp1cpF+UB4d8fvOKCn8av4d2YsdyN8og1VKQnSvwolehDesl9GeSfifjziLjg25QnE29PYC/3+6YzJ+a9tF0sVcfJRDHzGnSVRn+iD7djIenXdlgm0Kn4p4PjLvrNQs0gbcvbF9cdjC84P/fsSQx6XtMA4jZYk-----END CERTIFICATE-----"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "prod-celltw.secb2b.com:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "eu-prod-celltw.secb2b.com:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "us-prod-celltw.secb2b.com:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, v0, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "gslb.secb2b.com:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, v1, Lcom/samsung/cpp/ResponseData;->CA:Ljava/util/List;

    const-string v3, "-----BEGIN CERTIFICATE-----MIIEyzCCA7OgAwIBAgIQDtgbCKB1PO++vF1RYTaWQzANBgkqhkiG9w0BAQsFADBBMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMdGhhd3RlLCBJbmMuMRswGQYDVQQDExJ0aGF3dGUgU1NMIENBIC0gRzIwHhcNMTUwNTA1MDAwMDAwWhcNMTcwNzAzMjM1OTU5WjB+MQswCQYDVQQGEwJDTjEPMA0GA1UECAwG5YyX5LqsMQ8wDQYDVQQHDAbljJfkuqwxMzAxBgNVBAoMKuWMl+S6rOS4ieaYn+mAmuS/oeaKgOacr+eglOeptuaciemZkOWFrOWPuDEYMBYGA1UEAwwPKi5zZWNiMmIuY29tLmNuMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoz0bUIlWLyx7FdaJjd+1SjsX4ySfQGG/PYM43Pf+9xETudttzK5DunnfxPo89r+oCWAfuWho6p9VbLWNiSvU8vivO0cOF1QiL9qGlT2q7p9NDrIrjPe3Ms9ZA5W08vIb+9MCJdVgZTt3FGRb4t2YKjhbB2X+DusVzNRaSWqZQKDA7ALrk0ZahlVTuF7hIK7TO103j1iQbymV7oUt1ohQ2tklA1zlOR/wLSdrsLdM1pQfr7r64gUUiRIZ7T7nYTeYT2c4DktjJxDl4UM3QSG8aA6t/J/zgMNS1W9u4ri6x1MUC+VpYVAThS8Kldl2Y3sqTe8sHMu8r/BHnscXdwIebwIDAQABo4IBgDCCAXwwKQYDVR0RBCIwIIIPKi5zZWNiMmIuY29tLmNugg1zZWNiMmIuY29tLmNuMAkGA1UdEwQCMAAwbgYDVR0gBGcwZTBjBgZngQwBAgIwWTAmBggrBgEFBQcCARYaaHR0cHM6Ly93d3cudGhhd3RlLmNvbS9jcHMwLwYIKwYBBQUHAgIwIwwhaHR0cHM6Ly93d3cudGhhd3RlLmNvbS9yZXBvc2l0b3J5MA4GA1UdDwEB/wQEAwIFoDAfBgNVHSMEGDAWgBTCT0hX/NFPmsBdOH0OBdvZLrVSYDArBgNVHR8EJDAiMCCgHqAchhpodHRwOi8vdGouc3ltY2IuY29tL3RqLmNybDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwVwYIKwYBBQUHAQEESzBJMB8GCCsGAQUFBzABhhNodHRwOi8vdGouc3ltY2QuY29tMCYGCCsGAQUFBzAChhpodHRwOi8vdGouc3ltY2IuY29tL3RqLmNydDANBgkqhkiG9w0BAQsFAAOCAQEAnG/ZLTMspoflf1aWJ1FtS6YQKtZDScYeR5Z4klQkPQafJBv0KNWGhJtQLbP/JwF89wlbU1UzYzVoWRUXDREINqxWngRH7fHjejep9GdkelsB6Zp4FlswFnH0pTiOzw+36o6h5I5swTbUcQ7x2jdG3k61bSkFDRHt0WZBlx0OARi1t1n0T/ZHcgfOSQ0SUveaTfA77RqnXimRX8MzOZtO+U+u/LWWyrbm0drrGMSODRFj1o0bUJOqUKUOR6qGBoAon9vfLBfXOlTSfA1nXT9JmTPPkYHhv4V5ph2LamZ/kz1jwQ/mP2KXaPsxe78nLKEsXAGdfs2Hho5svhqhiI/nwQ==-----END CERTIFICATE-----"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, v1, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "cn-prod-celltw.secb2b.com.cn:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, v1, Lcom/samsung/cpp/ResponseData;->URL:Ljava/util/List;

    const-string v3, "china-gslb.secb2b.com.cn:443"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v2, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    iget-object v2, v2, Lcom/samsung/cpp/CPPPinningResponse;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v2, Lcom/samsung/cpp/CPPPinning;->mResponse:Lcom/samsung/cpp/CPPPinningResponse;

    iget-object v2, v2, Lcom/samsung/cpp/CPPPinningResponse;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method
