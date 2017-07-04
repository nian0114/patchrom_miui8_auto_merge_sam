.class public Lcom/android/providers/media/MediaProvider$RecomendInfo;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecomendInfo"
.end annotation


# instance fields
.field public mFaceId:I

.field public mPersonId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "faceId"    # I
    .param p2, "personId"    # I

    .prologue
    const/4 v0, 0x0

    .line 9379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9383
    iput v0, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    .line 9384
    iput v0, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    .line 9380
    iput p1, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    .line 9381
    iput p2, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    .line 9382
    return-void
.end method
