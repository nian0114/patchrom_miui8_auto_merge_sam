.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
.super Ljava/lang/Object;
.source "AlgorithmParameter.java"


# instance fields
.field private mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

.field private mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

.field private mSuite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallengeFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    return-object v0
.end method

.method public getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    return-object v0
.end method

.method public getSuite()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mSuite:Ljava/lang/String;

    return-object v0
.end method

.method public setChallengeFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;)V
    .locals 0
    .param p1, "challengeFormat"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    return-void
.end method

.method public setResponseFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;)V
    .locals 0
    .param p1, "responseFormat"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    return-void
.end method

.method public setSuite(Ljava/lang/String;)V
    .locals 0
    .param p1, "suite"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mSuite:Ljava/lang/String;

    return-void
.end method
