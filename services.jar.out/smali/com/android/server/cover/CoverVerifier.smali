.class final Lcom/android/server/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverVerifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultClearCoverHeight:I

.field private mDefaultClearCoverWidth:I

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    iput-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-object p1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    return-void
.end method

.method private getDefaultTypeOfCover()I
    .locals 6

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v5

    if-ne v5, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_0
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .local v0, "supportSViewCoverHeight":I
    :goto_0
    return v0

    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_3
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .local v0, "supportSViewCoverWidth":I
    :goto_0
    return v0

    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_3
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initializeDefaultCoverState()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    const v1, 0x10501cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    const v1, 0x10501cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    const v1, 0x10501cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    const v1, 0x10501ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    const v1, 0x10501cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    const v1, 0x10501d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    :cond_0
    return-void
.end method

.method private static isFactoryMode()Z
    .locals 2

    .prologue
    const-string v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method isCoverAttached()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onUpdateCoverAttachedLocked(Z)Z
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    const-string v1, "CoverManager.CoverVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateCoverAttachedLocked : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "CoverManager.CoverVerifier"

    const-string v2, "updateCoverAttachedLocked : This device is not support cover attach"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method onUpdateCoverVerifiedLocked()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "change":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    const-string v2, "CoverManager.CoverVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverVerificationLocked : mIsCoverVerified ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", change="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .local v1, "verified":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "verified":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "CoverManager.CoverVerifier"

    const-string v3, "updateCoverVerificationLocked : This device is not support cover verify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .locals 8
    .param p1, "destCoverState"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "srcCoverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v1

    .local v1, "type":I
    iget v2, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .local v2, "color":I
    iget v6, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .local v6, "model":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .local v3, "widthPixel":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .local v4, "heightPixel":I
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v5, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_0
    const-string v0, "CoverManager.CoverVerifier"

    const-string v5, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CoverManager.CoverVerifier"

    const-string v5, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : srcCoverState is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .restart local v1    # "type":I
    const/16 v0, 0xff

    if-eq v1, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    :cond_4
    const-string v0, "CoverManager.CoverVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : type ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", color="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", app Uri="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", widthPixel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", heightPixel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "type":I
    :cond_5
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_7

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "type":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "color":I
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "model":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .restart local v3    # "widthPixel":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .restart local v4    # "heightPixel":I
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v5, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_6
    const-string v0, "CoverManager.CoverVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", color="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", model="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_7
    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v1

    .restart local v1    # "type":I
    iget v2, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .restart local v2    # "color":I
    iget v6, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .restart local v6    # "model":I
    goto :goto_1
.end method
