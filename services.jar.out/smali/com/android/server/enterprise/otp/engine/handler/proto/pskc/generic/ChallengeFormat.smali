.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
.super Ljava/lang/Object;
.source "ChallengeFormat.java"


# instance fields
.field private mCheckDigit:Z

.field private mEncoding:Ljava/lang/String;

.field private mMax:I

.field private mMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckDigit()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mCheckDigit:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mMin:I

    return v0
.end method

.method public setCheckDigit(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkDigit"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mCheckDigit:Z

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mCheckDigit:Z

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mEncoding:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 1
    .param p1, "max"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mMax:I

    .line 54
    :cond_0
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 1
    .param p1, "min"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->mMin:I

    .line 45
    :cond_0
    return-void
.end method
