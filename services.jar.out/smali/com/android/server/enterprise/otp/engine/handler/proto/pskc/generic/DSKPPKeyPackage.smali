.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
.super Ljava/lang/Object;
.source "DSKPPKeyPackage.java"


# instance fields
.field mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

.field mServerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V
    .locals 0
    .param p1, "keyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->mServerId:Ljava/lang/String;

    return-void
.end method
