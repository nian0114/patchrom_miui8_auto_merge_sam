.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;
.super Ljava/lang/Object;
.source "ObjectType.java"


# instance fields
.field private mObjectEncoding:Ljava/lang/String;

.field private mObjectId:Ljava/lang/String;

.field private mObjectMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setObjectEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "mObjectEncoding"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectEncoding:Ljava/lang/String;

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mObjectId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method public setObjectMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mObjectMimeType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->mObjectMimeType:Ljava/lang/String;

    return-void
.end method
