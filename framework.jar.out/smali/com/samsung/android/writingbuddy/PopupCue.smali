.class public Lcom/samsung/android/writingbuddy/PopupCue;
.super Ljava/lang/Object;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_X:Z = false

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_Y:Z = false

.field private static final TAG:Ljava/lang/String; = "WritingBuddyPopupCue"

.field public static final TYPE_MULTILINE_EDITOR:I = 0x2

.field public static final TYPE_NONFORM_VIEW:I = 0x3

.field public static final TYPE_SINGLELINE_EDITOR:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

.field private mHoverListner:Landroid/view/View$OnHoverListener;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsAirButtonClicked:Z

.field private mIsShowing:Z

.field private mPopupHeight:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field private mPopupWidth:I

.field private mPopupXfromAnchor:I

.field private mPopupYfromAnchor:I

.field private mTouchListner:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->initPopup()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/writingbuddy/PopupCue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/PopupCue;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return p1
.end method

.method private computePosition(ILandroid/view/MotionEvent;)V
    .locals 29
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .local v4, "cueWidth":I
    const/4 v3, 0x0

    .local v3, "cueHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getHoverCueDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v21

    .local v21, "visibleScrRect":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v20, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x0

    .local v15, "paddingStart":I
    const/16 v16, 0x0

    .local v16, "paddingTop":I
    const/4 v14, 0x0

    .local v14, "paddingBottom":I
    const/16 v22, 0x0

    .local v22, "x":I
    const/16 v24, 0x0

    .local v24, "y":I
    const/16 v23, 0x0

    .local v23, "xFromAnchor":I
    const/16 v25, 0x0

    .local v25, "yFromAnchor":I
    const/16 v17, 0x0

    .local v17, "position_offset":I
    const/4 v12, 0x0

    .local v12, "minX":I
    const/4 v11, 0x0

    .local v11, "maxX":I
    const/4 v9, 0x0

    .local v9, "mX":I
    const/4 v10, 0x0

    .local v10, "mY":I
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v10, v0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/EditText;

    .local v19, "targetView":Landroid/widget/EditText;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .local v7, "l":Landroid/text/Layout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v16

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x105031b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v13, v0

    .local v13, "offestFromCursor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x105031c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v6, v0

    .local v6, "imagePaddingBottom":I
    if-eqz v7, :cond_8

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getBaseline()I

    move-result v26

    if-lez v26, :cond_8

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v27

    sub-int v8, v26, v27

    .local v8, "layoutHeight":I
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getBaseline()I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v27

    add-int v26, v26, v27

    div-int/lit8 v27, v8, 0x2

    sub-int v2, v26, v27

    .local v2, "centerYofText":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v26, v26, v2

    sub-int v27, v3, v6

    sub-int v24, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutDirection()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v26, v26, v15

    sub-int v22, v26, v4

    sub-int v22, v22, v13

    .end local v8    # "layoutHeight":I
    :goto_0
    add-int v26, v22, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v22, v26, v4

    :cond_2
    if-gez v22, :cond_3

    const/16 v22, 0x0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getStatusBarHeight()I

    move-result v18

    .local v18, "statusBarHeight":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isStatusBarShowing()Z

    move-result v26

    if-eqz v26, :cond_4

    move/from16 v24, v18

    :cond_4
    if-gez v24, :cond_5

    const/16 v24, 0x0

    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v23, v22, v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v24, v26

    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v13    # "offestFromCursor":I
    .end local v18    # "statusBarHeight":I
    .end local v19    # "targetView":Landroid/widget/EditText;
    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    sget-boolean v26, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v26, :cond_6

    const-string v26, "WritingBuddyPopupCue"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "computePosition x : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " y : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " w : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " h : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .restart local v2    # "centerYofText":I
    .restart local v6    # "imagePaddingBottom":I
    .restart local v7    # "l":Landroid/text/Layout;
    .restart local v8    # "layoutHeight":I
    .restart local v13    # "offestFromCursor":I
    .restart local v19    # "targetView":Landroid/widget/EditText;
    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v22, v26, v15

    add-int v22, v22, v13

    goto/16 :goto_0

    .end local v2    # "centerYofText":I
    .end local v8    # "layoutHeight":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutDirection()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v26, v26, v15

    sub-int v22, v26, v4

    sub-int v22, v22, v13

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v26

    add-int v27, v16, v14

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v2, v16, v26

    .restart local v2    # "centerYofText":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v26, v26, v2

    sub-int v27, v3, v6

    sub-int v24, v26, v27

    goto/16 :goto_0

    .end local v2    # "centerYofText":I
    :cond_9
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v22, v26, v15

    add-int v22, v22, v13

    goto :goto_2

    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v13    # "offestFromCursor":I
    .end local v19    # "targetView":Landroid/widget/EditText;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050319

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x105031a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v22, v26, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v24, v26, v16

    add-int v26, v22, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v22, v26, v4

    :cond_b
    add-int v26, v24, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v24, v26, v3

    :cond_c
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    :cond_e
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v23, v22, v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v24, v26

    goto/16 :goto_1
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    move-object v0, p2

    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopup()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;-><init>(Lcom/samsung/android/writingbuddy/PopupCue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-void
.end method

.method private createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WritingBuddyPopupCue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPopupLayoutParam() x : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  w : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WritingBuddyCue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10304fb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getStatusBarHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "height":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "WritingBuddyPopupCue"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .local v4, "top":I
    const/4 v0, 0x0

    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    check-cast v2, Landroid/view/View;

    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    :goto_2
    move-object v5, v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectInWindow : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .local v4, "top":I
    const/4 v0, 0x0

    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    check-cast v2, Landroid/view/View;

    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    :goto_2
    move-object v5, v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectOnScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private initPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 6
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v3}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    const v0, 0x10304fb

    .local v0, "animationResID":I
    :goto_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v0, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "animationResID":I
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return-void

    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getRectInAnchor()Landroid/graphics/Rect;
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public isAirButtonClicked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return v0
.end method

.method public isPointInPopup(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    return v0
.end method

.method public isStatusBarShowing()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyPopupCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public show(ILandroid/view/MotionEvent;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopup()V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    :cond_1
    return-void
.end method

.method public switchCueButton(Z)V
    .locals 1
    .param p1, "isTouched"    # Z

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->switchCueButton(Z)V

    return-void
.end method

.method public updatePopupPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WritingBuddyPopupCue"

    const-string v2, "updatePopupPosition()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
