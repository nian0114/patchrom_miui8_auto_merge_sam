.class public Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "EdgeCocktailBarStatePolicy.java"


# static fields
.field private static final COCKTAIL_BAR_STATE_LOCK_INVISIBLE:I = 0x6

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_APP:I = 0x20000

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_SYSTEM:I = 0x10000

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_SHOWING_DURATION:I

.field private final mCocktailSize:I

.field private mCurrentCocktailSize:I

.field private mDimBackground:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const-class v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->COCKTAIL_BAR_SHOWING_DURATION:I

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    iput v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    return-void
.end method

.method private canUpdateVisibility(III)Z
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_2

    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch p2, :pswitch_data_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUpdateVisibility: invalide type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "b"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    const/4 v0, 0x0

    .local v0, "changeFlag":I
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    if-eq v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    if-eq v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-boolean v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget-boolean v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    return v0
.end method

.method private getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "currentStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    return-object v0
.end method

.method private needToRefreshHideTimer(I)Z
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToUpdateVisibility(III)Z
    .locals 8
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_2

    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "needToUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch p2, :pswitch_data_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToUpdateVisibility: invalid type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 3
    .param p1, "oldStateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    :cond_0
    return-void
.end method

.method private updateCocktailBarVisibility(IJ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "delayMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageChangeVisibility(IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleChangeVisibility(I)V

    goto :goto_0
.end method

.method private updateSysfsBarLength()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    div-int/lit8 v0, v1, 0x2

    .local v0, "temp":I
    :goto_0
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    invoke-static {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    :cond_0
    return-void

    .end local v0    # "temp":I
    :cond_1
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    .restart local v0    # "temp":I
    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDimBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .local v0, "bgType":I
    :goto_0
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundType: bgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimBackground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    .end local v0    # "bgType":I
    :pswitch_0
    const/4 v0, 0x2

    .restart local v0    # "bgType":I
    goto :goto_0

    .end local v0    # "bgType":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    .end local v0    # "bgType":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleChangeVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleChangeVisibility: visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v2, 0x30001

    .local v2, "mask":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v5, 0x30001

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v3

    .local v3, "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput p1, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v0, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-ne p1, v0, :cond_3

    .local v0, "bVisibility":Z
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cocktailBarVisibilityChanged: visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v0}, Landroid/view/IWindowManager;->cocktailBarVisibilityChanged(Z)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v4, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateSysfsBarLength()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bVisibility":Z
    .end local v3    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_2
    :goto_1
    return-void

    .restart local v3    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "bVisibility":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleChangeVisibility : RemoteException + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/16 v1, 0x5b

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    return-void
.end method

.method public handleNotifyState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyCurrentState : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    return-void
.end method

.method public handleRefreshState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshState: mWindowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0
.end method

.method public handleUpdateActivate(Z)V
    .locals 4
    .param p1, "activate"    # Z

    .prologue
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockState: mActivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    return-void
.end method

.method public handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 0
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public handleUpdatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .locals 8
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStatus: shift = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dimBackground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x64

    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .local v1, "mask":I
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    if-nez p1, :cond_2

    const/high16 v4, 0x20000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x1

    const v6, 0x30001

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    :goto_0
    iput-boolean p2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    :cond_2
    const/high16 v4, 0x20000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x2

    const v6, 0x30001

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0
.end method

.method public handleUpdateStateFromSystem(IZ)V
    .locals 13
    .param p1, "windowType"    # I
    .param p2, "delayed"    # Z

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x64

    const v9, 0x20001

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStateFromSystem: Current Info windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStateFromSystem: New windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->hasMessageUpdateStateFromSystemDelayed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageUpdateStateFromSystemDelayed()V

    :cond_1
    if-nez p2, :cond_2

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "handleUpdateStateFromSystem: updateStateFromSystemDelayed from keyguard to statusbar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageUpdateStateFromSystemDelayed(IJ)V

    :goto_0
    return-void

    :cond_2
    const-wide/16 v2, 0x64

    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x20001

    .local v1, "mask":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    :goto_1
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateSysfsBarLength()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    const/high16 v4, 0x10000

    invoke-virtual {p0, v4, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v8, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    const/16 v4, 0xbb8

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/16 v5, 0xbb8

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleUpdateVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/16 v5, 0xbb8

    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWindowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .local v1, "mask":I
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToRefreshHideTimer(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->startHideTimer(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v3, 0x30001

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_0
.end method
