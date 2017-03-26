.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIDSet"
.end annotation


# instance fields
.field public mAbbTitle:I

.field public mContentDescription:I

.field public mDim:I

.field public mListNormal:I

.field public mNormal:I

.field public mPress:I

.field public mTitle:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I

    .prologue
    const/4 v0, 0x0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 686
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 687
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 688
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 689
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 690
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 691
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 694
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 695
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 696
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 697
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 698
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "contentDescription"    # I

    .prologue
    const/4 v0, 0x0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 686
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 687
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 688
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 689
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 690
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 691
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 701
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 702
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 703
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 704
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 705
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 706
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "abbTitle"    # I
    .param p6, "contentDescription"    # I

    .prologue
    const/4 v0, 0x0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 686
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 687
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 688
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 689
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 690
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 691
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 709
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 710
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 711
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 712
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 713
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 714
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 715
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "abbTitle"    # I
    .param p6, "contentDescription"    # I
    .param p7, "listNormal"    # I

    .prologue
    const/4 v0, 0x0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 686
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 687
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 688
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 689
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 690
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 691
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 718
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 719
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 720
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 721
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 722
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 723
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 724
    iput p7, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 725
    return-void
.end method
