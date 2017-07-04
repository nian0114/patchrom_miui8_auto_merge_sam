.class public Lcom/samsung/android/multiwindow/ui/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field public static final DOCKING:I = 0x2

.field public static final MOVE:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GuideView"

.field public static final WARNING:I = 0x1

.field public static final WARNING_NOT_SUPPORT:I = 0x4


# instance fields
.field private mAttached:Z

.field private mBorderView:Landroid/view/View;

.field private mDimAmount:F

.field mDisplay:Landroid/view/Display;

.field private mDockingHightlightColor:I

.field private mFakeHeaderView:Landroid/widget/ImageView;

.field private mGuideDrawable:Landroid/graphics/drawable/Drawable;

.field private mGuidePaddingBottom:I

.field private mGuidePaddingLeft:I

.field private mGuidePaddingRight:I

.field private mGuidePaddingTop:I

.field private mGuideState:I

.field private mGuideWidth:I

.field private mHeaderViewVisibility:Z

.field private mIsSupportWindowController:Z

.field private mLastRect:Landroid/graphics/Rect;

.field private mMultiWindowFlags:I

.field private mShowing:Z

.field private mToken:Landroid/os/IBinder;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "display"    # Landroid/view/Display;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 45
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    .line 51
    const/16 v0, 0x8d4

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    .line 54
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    .line 65
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDisplay:Landroid/view/Display;

    .line 84
    iput-object p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    .line 85
    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    .line 88
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 106
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "windowType"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 74
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 225
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 226
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 229
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 230
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 231
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 232
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 233
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 238
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 239
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 242
    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 243
    return-object v0
.end method

.method private refreshBackground()V
    .locals 5

    .prologue
    const v1, 0x10805d6

    const v4, 0x10805ab

    const v3, 0x1080594

    const/4 v2, 0x4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_3
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805d4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x1080593

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805cd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 313
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->removeAllViews()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 117
    :cond_0
    monitor-exit p0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGuideState()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    return v0
.end method

.method public getGuideViewAttached()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    return v0
.end method

.method public getLastBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 208
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 209
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-nez v4, :cond_3

    .line 126
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    .line 129
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 130
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    .line 134
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "bd":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v3, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_2

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p0, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 145
    .end local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->resetResolvedLayoutDirection()V

    .line 146
    invoke-virtual {p0, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setLayoutDirection(I)V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 149
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iput-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 151
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 153
    .end local v0    # "bd":Landroid/graphics/drawable/Drawable;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 344
    return-void
.end method

.method public setDimAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 337
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    .line 338
    return-void
.end method

.method public setFakeHeaderVisibility(Z)V
    .locals 2
    .param p1, "vis"    # Z

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    .line 263
    if-eqz p1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 271
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    .line 273
    return-void
.end method

.method public setGuidePadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    .line 349
    iput p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    .line 350
    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    .line 351
    iput p4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    .line 352
    monitor-exit p0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGuideState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 247
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    if-ne v0, p1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public setMultiWindowFlags(I)V
    .locals 0
    .param p1, "multiWindowFlags"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    .line 222
    return-void
.end method

.method public show(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 156
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIIIZ)V

    .line 157
    return-void
.end method

.method public show(IIIIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bDocking"    # Z

    .prologue
    const/4 v6, 0x1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 162
    :cond_0
    const-string v4, "GuideView"

    const-string v5, "mBorder or mFakeHeaderView is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit p0

    .line 204
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .local v3, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    add-int v2, v4, v5

    .line 168
    .local v2, "totalWidth":I
    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    add-int/2addr v4, p4

    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    add-int v1, v4, v5

    .line 169
    .local v1, "totalHeight":I
    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 170
    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 171
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    if-eqz p5, :cond_2

    .line 174
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_6

    .line 175
    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 181
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 184
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-nez v4, :cond_5

    .line 189
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_4

    .line 191
    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 192
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 197
    :cond_4
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 200
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 201
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 202
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    add-int v5, p1, p3

    add-int v6, p2, p4

    invoke-virtual {v4, p1, p2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    monitor-exit p0

    goto/16 :goto_0

    .end local v1    # "totalHeight":I
    .end local v2    # "totalWidth":I
    .end local v3    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 177
    .restart local v1    # "totalHeight":I
    .restart local v2    # "totalWidth":I
    .restart local v3    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const/4 v4, -0x1

    :try_start_1
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 194
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
