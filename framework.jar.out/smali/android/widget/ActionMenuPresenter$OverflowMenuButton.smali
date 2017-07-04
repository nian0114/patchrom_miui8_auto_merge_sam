.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v3, [F

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHoverUIFeatureLevel()I

    move-result v0

    if-ge v0, v3, :cond_0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setHoverPopupType(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setLongClickable(Z)V

    :cond_1
    return-void
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

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 21

    .prologue
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v19 .. v19}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [I

    .local v12, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v4

    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050017

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .local v14, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v16

    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v7

    .local v7, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v13, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v11, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .local v5, "density":F
    const/16 v19, 0x0

    aget v19, v12, v19

    div-int/lit8 v20, v16, 0x2

    add-int v10, v19, v20

    .local v10, "referenceX":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getLayoutDirection()I

    move-result v19

    if-nez v19, :cond_2

    sub-int v10, v13, v10

    :cond_2
    const/high16 v19, 0x40a00000    # 5.0f

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v19 .. v19}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .local v2, "cheatSheet":Landroid/widget/Toast;
    :goto_1
    const/4 v9, 0x0

    .local v9, "offsetY":I
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v7

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_6

    :cond_3
    const/16 v19, 0x1

    aget v19, v12, v19

    sub-int v9, v19, v14

    const v19, 0x800035

    add-int v20, v7, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v10, v1}, Landroid/widget/Toast;->setGravity(III)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    .local v8, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v19

    if-eqz v19, :cond_4

    const/high16 v19, 0x40800000    # 4.0f

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v15, v0

    .local v15, "tempToastHeight":I
    const/4 v6, 0x0

    .local v6, "gravity":I
    const/16 v17, 0x0

    .local v17, "xOffset":I
    const/16 v18, 0x0

    .local v18, "yOffset":I
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v7

    add-int v19, v19, v15

    move/from16 v0, v19

    if-ge v0, v11, :cond_7

    const/16 v6, 0x35

    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v18, v19, v7

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v6, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .end local v6    # "gravity":I
    .end local v15    # "tempToastHeight":I
    .end local v17    # "xOffset":I
    .end local v18    # "yOffset":I
    :cond_4
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->performHapticFeedback(I)Z

    const/16 v19, 0x1

    goto/16 :goto_0

    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .end local v8    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v9    # "offsetY":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_1

    .restart local v9    # "offsetY":I
    :cond_6
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v9, v11, v19

    const v19, 0x800055

    add-int v20, v7, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v10, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .restart local v6    # "gravity":I
    .restart local v8    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "tempToastHeight":I
    .restart local v17    # "xOffset":I
    .restart local v18    # "yOffset":I
    :cond_7
    const/16 v6, 0x55

    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    move/from16 v18, v7

    goto :goto_3
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v3

    .local v3, "changed":Z
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v10}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v9

    .local v9, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .local v5, "halfEdge":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method
