.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
.super Ljava/lang/Object;
.source "KeyInfoEncryption.java"


# instance fields
.field private encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field private mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

.field private mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    return-object v0
.end method

.method public getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public setDerivedKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;)V
    .locals 0
    .param p1, "mDerivedKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    return-void
.end method

.method public setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    .locals 0
    .param p1, "encryptionKeyType"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .locals 0
    .param p1, "mX509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-void
.end method
