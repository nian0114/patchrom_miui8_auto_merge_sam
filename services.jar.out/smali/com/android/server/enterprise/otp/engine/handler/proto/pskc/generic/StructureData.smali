.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
.super Ljava/lang/Object;
.source "StructureData.java"


# instance fields
.field mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

.field mPlainValue:Ljava/lang/String;

.field mValueMac:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    return-object v0
.end method

.method public getPlainValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mPlainValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueMAC()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mValueMac:[B

    return-object v0
.end method

.method public setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V
    .locals 0
    .param p1, "encryptedValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    return-void
.end method

.method public setPlainValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "plainValue"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mPlainValue:Ljava/lang/String;

    return-void
.end method

.method public setValueMAC(Ljava/lang/String;)V
    .locals 1
    .param p1, "valueMAC"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->mValueMac:[B

    return-void
.end method
