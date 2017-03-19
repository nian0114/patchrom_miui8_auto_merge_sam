.class public Lcom/android/providers/media/RecommendFace$CompareItem;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareItem"
.end annotation


# instance fields
.field public mId:I

.field public mScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput v0, p0, Lcom/android/providers/media/RecommendFace$CompareItem;->mId:I

    .line 343
    iput v0, p0, Lcom/android/providers/media/RecommendFace$CompareItem;->mScore:I

    return-void
.end method
