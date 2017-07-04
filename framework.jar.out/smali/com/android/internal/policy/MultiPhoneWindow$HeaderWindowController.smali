.class public Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.super Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderWindowController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;,
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;,
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;
    }
.end annotation


# instance fields
.field private mDragAndDropView:Landroid/widget/ImageView;

.field protected mIsAttached:Z

.field private mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

.field private mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 4

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/GestureDetector;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Lcom/android/internal/policy/MultiPhoneWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->setHeaderGestureDetector(Landroid/view/GestureDetector;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    return-object v0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MultiWindow Controller"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    return-object v0
.end method

.method private showMenu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V

    return-void
.end method

.method private showMenu(Z)V
    .locals 9
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$5800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .local v7, "measureWidth":I
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr v0, v7

    div-int/lit8 v8, v0, 0x2

    .local v8, "x":I
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v8, v1, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->show(IIZ)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v8, v1, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->show(IIZ)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5900(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5900(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .end local v7    # "measureWidth":I
    .end local v8    # "x":I
    :cond_0
    :goto_0
    return-void

    .restart local v7    # "measureWidth":I
    .restart local v8    # "x":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method


# virtual methods
.method protected performInflateController()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const v4, 0x10805bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->performUpdateBackground()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mMenuContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080592

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    :cond_0
    return-void
.end method

.method protected performStartDragMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performStartDragMode()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected performStopDragMode()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performStopDragMode()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected performUpdateBackground()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const v1, 0x1080592

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected performUpdateMenuVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->showMenu()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUpdateMenuVisibility, mActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAttachedToWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    goto :goto_0
.end method

.method protected performUpdateVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->updateIsFullScreen()V
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdateVisibility, not full screen ignore visible ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsShowing:Z

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mNeedInvalidate:Z

    if-nez v1, :cond_2

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdateVisibility, same visibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v1, :cond_0

    const-string v1, "TAG"

    const-string v2, "token is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MultiPhoneWindow"

    const-string v2, "performUpdateVisibility(), Skip add mPenWindowHeader, DecorView is not visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsShowing:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mNeedInvalidate:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MultiPhoneWindow"

    const-string v2, "mDragAndDropView visible"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->needToExposureTitleBarMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->addWindow()V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->setAnimation()V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    goto/16 :goto_0
.end method

.method protected removeResizeVisualCue()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "removeWindow ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->removeWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    :cond_1
    return-void
.end method

.method protected updateAvailableButtons()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->checkAvailableButtonsForAnim()V

    :cond_0
    return-void
.end method

.method protected updatePosition()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail MultiPhoneWindow::updatePosition(), mActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
