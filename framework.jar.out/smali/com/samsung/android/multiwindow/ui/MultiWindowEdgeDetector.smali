.class public Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static mHeight:F

.field private static mHeightForPen:F

.field private static mIsSupportCocktailBar:Z

.field private static mWidth:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdge:I

.field private mRotation:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    :cond_0
    return-void
.end method

.method private checkCocktailBar(I)I
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-ne v0, v2, :cond_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getEdgeFlag(ILandroid/view/MotionEvent;)I
    .locals 7
    .param p0, "screenWidth"    # I
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "flag":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    sput v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    :cond_0
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    move v1, v0

    .end local v0    # "flag":I
    .local v1, "flag":I
    :goto_0
    return v1

    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_1
    const/4 v0, 0x1

    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_2
    :goto_1
    const-string v4, "MultiWindowEdgeDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0    # "flag":I
    .restart local v1    # "flag":I
    goto :goto_0

    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_3
    int-to-float v4, p0

    sget v5, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method private notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mScreenWidth:I

    sget-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    :cond_0
    return-void
.end method

.method public isEdge()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .local v0, "lastResizing":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->init()V

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mScreenWidth:I

    invoke-static {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    sget-boolean v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    invoke-direct {p0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->checkCocktailBar(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_5
    iput v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const-string v0, "MultiWindowEdgeDetector"

    const-string v1, "reset last edge detect inform by force"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "multiWindowUIIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "com.sec.android.multiwindow.gesture.overlayHelp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_1
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
