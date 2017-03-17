.class public Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;
.super Ljava/lang/Object;
.source "DSKPPUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64ToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64Val"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B[B)[B
    .locals 3
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .local v1, "sha256_HMAC":Ljavax/crypto/Mac;
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v0, "secret_key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static genRandom()[B
    .locals 3

    .prologue
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .local v1, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x8

    new-array v0, v2, [B

    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static mergeByteArray([B[B)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v4, 0x0

    array-length v0, p0

    .local v0, "aLen":I
    array-length v1, p1

    .local v1, "bLen":I
    add-int v3, v0, v1

    new-array v2, v3, [B

    .local v2, "c":[B
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v2
.end method

.method public static toBytes(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
