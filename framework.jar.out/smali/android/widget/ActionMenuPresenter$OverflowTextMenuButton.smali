.class public Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowTextMenuButton"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentFontScale:F

.field private mDefaultTextSize:F

.field private mMaxFontScale:F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xbb

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    const v3, 0x10102f6

    invoke-direct {p0, p2, v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v3, 0x3f99999a    # 1.2f

    iput v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mMaxFontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, v7, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, p2, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v7, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mDefaultTextSize:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    iget v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    iget v4, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mMaxFontScale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mMaxFontScale:F

    iput v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    :cond_0
    iget v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mDefaultTextSize:F

    iget v4, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v6, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setTextSize(IF)V

    .end local v1    # "actionMeneTextAppearnceId":I
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040327

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080895

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->changeButtonBackground()V

    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_button_background"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .local v1, "show":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_2

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "show":Z
    :cond_1
    move v1, v2

    goto :goto_1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "show":Z
    :cond_2
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mMaxFontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mDefaultTextSize:F

    iget v3, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mCurrentFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->changeButtonBackground()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->changeButtonBackground()V

    return-void
.end method

.method public performClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
