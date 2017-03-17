.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# instance fields
.field private mExpiryDate:Ljava/lang/String;

.field private mKeyUsageMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mNoOfTransactions:I

.field private mPinPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

.field private mStartDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mKeyUsageMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoOfTransactions()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mNoOfTransactions:I

    return v0
.end method

.method public getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mPinPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryDate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mExpiryDate:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "mUsageMode"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mKeyUsageMode:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mKeyUsageMode:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mKeyUsageMode:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums;->strToKeyUsage(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setNoOfTransactions(Ljava/lang/String;)V
    .locals 1
    .param p1, "noOfTransactions"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mNoOfTransactions:I

    :cond_0
    return-void
.end method

.method public setPinPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;)V
    .locals 0
    .param p1, "pinPolicy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mPinPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->mStartDate:Ljava/lang/String;

    return-void
.end method
