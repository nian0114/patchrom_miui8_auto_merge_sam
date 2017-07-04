.class public Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtEffectItem"
.end annotation


# instance fields
.field private mCategory:I

.field private mEffect:Ljava/lang/String;

.field private mEffectId:I

.field private mFilter:Ljava/lang/String;

.field private mHeight:I

.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field private mPosx:I

.field private mPosy:I

.field private mTitle:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I

.field private mWidth:I

.field private mfiltertype:Ljava/lang/String;

.field private mhandler:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "effectId"    # I
    .param p3, "vendor"    # Ljava/lang/String;
    .param p4, "effect"    # Ljava/lang/String;
    .param p5, "filter"    # Ljava/lang/String;
    .param p6, "version"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "posx"    # I
    .param p9, "posy"    # I
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "handler"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "filtertype"    # Ljava/lang/String;

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mId:I

    .line 790
    iput p2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    .line 791
    iput-object p3, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    .line 792
    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    .line 793
    iput-object p5, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    .line 794
    iput p6, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    .line 795
    iput-object p7, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    .line 796
    iput p8, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosx:I

    .line 797
    iput p9, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosy:I

    .line 798
    iput p10, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mWidth:I

    .line 799
    iput p11, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mHeight:I

    .line 800
    iput-object p12, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mhandler:Ljava/lang/String;

    .line 801
    iput-object p13, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    .line 802
    iput-object p14, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mfiltertype:Ljava/lang/String;

    .line 803
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "effectId"    # I
    .param p3, "vendor"    # Ljava/lang/String;
    .param p4, "effect"    # Ljava/lang/String;
    .param p5, "filter"    # Ljava/lang/String;
    .param p6, "version"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "posx"    # I
    .param p9, "posy"    # I
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "handler"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "filtertype"    # Ljava/lang/String;
    .param p15, "category"    # I

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mId:I

    .line 808
    iput p2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    .line 809
    iput-object p3, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    .line 810
    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    .line 811
    iput-object p5, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    .line 812
    iput p6, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    .line 813
    iput-object p7, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    .line 814
    iput p8, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosx:I

    .line 815
    iput p9, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosy:I

    .line 816
    iput p10, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mWidth:I

    .line 817
    iput p11, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mHeight:I

    .line 818
    iput-object p12, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mhandler:Ljava/lang/String;

    .line 819
    iput-object p13, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    .line 820
    iput-object p14, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mfiltertype:Ljava/lang/String;

    .line 821
    iput p15, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mCategory:I

    .line 822
    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mCategory:I

    return v0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    return v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mfiltertype:Ljava/lang/String;

    return-object v0
.end method

.method public getFiterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mhandler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosx()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosx:I

    return v0
.end method

.method public getPosy()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mPosy:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->mWidth:I

    return v0
.end method
