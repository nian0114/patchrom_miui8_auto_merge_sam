.class Lcom/android/providers/media/FaceScanner$FaceGroupData;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceGroupData"
.end annotation


# instance fields
.field public mFaceDataIndexs:[I

.field public mFaceIds:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/FaceScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/media/FaceScanner$1;

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner$FaceGroupData;-><init>()V

    return-void
.end method
