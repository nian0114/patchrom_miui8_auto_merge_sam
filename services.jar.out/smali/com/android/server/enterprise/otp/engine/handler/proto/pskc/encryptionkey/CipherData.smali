.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
.super Ljava/lang/Object;
.source "CipherData.java"


# instance fields
.field private mCipherReferenceTransform:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field

.field private mCipherReferenceURI:Ljava/lang/String;

.field private mCipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherReferenceTransform()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherReferenceTransform:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCipherReferenceURI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherReferenceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherReferenceTransform(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mCipherReferenceTransform":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherReferenceTransform:Ljava/util/ArrayList;

    return-void
.end method

.method public setCipherReferenceURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCipherReferenceURI"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherReferenceURI:Ljava/lang/String;

    return-void
.end method

.method public setCipherValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCipherValue"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->mCipherValue:Ljava/lang/String;

    return-void
.end method
