.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
.super Ljava/lang/Object;
.source "MACMethod.java"


# instance fields
.field private mCipherAlgo:Ljava/lang/String;

.field private mCipherData:Ljava/lang/String;

.field private mShaAlgo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mCipherAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mCipherData:Ljava/lang/String;

    return-object v0
.end method

.method public getShaAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mShaAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherAlgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherAlgo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mCipherAlgo:Ljava/lang/String;

    return-void
.end method

.method public setCipherData(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mCipherData:Ljava/lang/String;

    return-void
.end method

.method public setShaAlgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "shaAlgor"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->mShaAlgo:Ljava/lang/String;

    return-void
.end method
