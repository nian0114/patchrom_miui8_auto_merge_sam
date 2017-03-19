.class Lcom/android/providers/media/FaceScanner$RecomendedPerson;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecomendedPerson"
.end annotation


# instance fields
.field public mPersonId:I

.field public mScore:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "personId"    # I
    .param p2, "score"    # I

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput v0, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 285
    iput v0, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 287
    iput p1, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 288
    iput p2, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 289
    return-void
.end method
