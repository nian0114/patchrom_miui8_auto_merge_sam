.class Lcom/android/providers/media/RecommendFace$FaceItem;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceItem"
.end annotation


# instance fields
.field public mFaceData:I

.field public mFaceId:I

.field public mOldScore:I

.field final synthetic this$0:Lcom/android/providers/media/RecommendFace;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/RecommendFace;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->this$0:Lcom/android/providers/media/RecommendFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    .line 30
    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    .line 31
    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/RecommendFace;Lcom/android/providers/media/RecommendFace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/media/RecommendFace;
    .param p2, "x1"    # Lcom/android/providers/media/RecommendFace$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace;)V

    return-void
.end method
