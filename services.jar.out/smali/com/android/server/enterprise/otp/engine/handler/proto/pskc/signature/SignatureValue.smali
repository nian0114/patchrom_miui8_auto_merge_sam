.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;
.super Ljava/lang/Object;
.source "SignatureValue.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mSignatureValue:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getignatureValue()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->mSignatureValue:[B

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->mId:Ljava/lang/String;

    return-void
.end method

.method public setSignatureValue([B)V
    .locals 0
    .param p1, "mSignatureValue"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->mSignatureValue:[B

    return-void
.end method
