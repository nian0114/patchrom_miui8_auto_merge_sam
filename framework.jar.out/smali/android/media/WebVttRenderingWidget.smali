.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$SpanLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$RegionLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return-void
.end method

.method static synthetic access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .prologue
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/WebVttRenderingWidget;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .prologue
    iget v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v0

    return v0
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 6
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    const/16 v4, 0x64

    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v1

    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v2, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .local v2, "linePosition":Ljava/lang/Integer;
    iget-boolean v3, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .local v3, "snapToLines":Z
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "autoPosition":Z
    :goto_0
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_2

    :cond_0
    :goto_1
    return v4

    .end local v0    # "autoPosition":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "autoPosition":Z
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    # getter for: Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    goto :goto_1
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .locals 19
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v4

    .local v4, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    move-result v6

    .local v6, "direction":I
    iget v0, v4, Landroid/media/TextTrackCue;->mAlignment:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v3

    .local v3, "absAlignment":I
    iget-boolean v5, v4, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .local v5, "cueSnapToLines":Z
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v12, v17, p1

    .local v12, "size":I
    packed-switch v3, :pswitch_data_0

    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    sub-int v15, v17, v18

    .local v15, "xPosition":I
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    rsub-int/lit8 v15, v15, 0x64

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v9, v17, p1

    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v10, v17, p1

    .local v10, "paddingRight":I
    if-ge v15, v9, :cond_1

    add-int v17, v15, v12

    move/from16 v0, v17

    if-le v0, v9, :cond_1

    add-int/2addr v15, v9

    sub-int/2addr v12, v9

    :cond_1
    rsub-int/lit8 v17, v10, 0x64

    move/from16 v0, v17

    int-to-float v11, v0

    .local v11, "rightEdge":F
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v17, v11

    if-gez v17, :cond_2

    add-int v17, v15, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-lez v17, :cond_2

    sub-int/2addr v12, v10

    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "rightEdge":F
    :cond_2
    mul-int v17, v15, p1

    div-int/lit8 v8, v17, 0x64

    .local v8, "left":I
    mul-int v17, v12, p1

    div-int/lit8 v14, v17, 0x64

    .local v14, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v16

    .local v16, "yPosition":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    move-result v7

    .local v7, "height":I
    if-gez v16, :cond_3

    mul-int v17, v16, v7

    add-int v13, p2, v17

    .local v13, "top":I
    :goto_1
    add-int v17, v8, v14

    add-int v18, v13, v7

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    return-void

    .end local v7    # "height":I
    .end local v8    # "left":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "xPosition":I
    .end local v16    # "yPosition":I
    :pswitch_0
    iget v15, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    .restart local v15    # "xPosition":I
    goto :goto_0

    .end local v15    # "xPosition":I
    :pswitch_1
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    sub-int v15, v17, v12

    .restart local v15    # "xPosition":I
    goto :goto_0

    .restart local v7    # "height":I
    .restart local v8    # "left":I
    .restart local v14    # "width":I
    .restart local v16    # "yPosition":I
    :cond_3
    sub-int v17, p2, v7

    mul-int v17, v17, v16

    div-int/lit8 v13, v17, 0x64

    .restart local v13    # "top":I
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .locals 9
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v1

    .local v1, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    move-result v2

    .local v2, "regionHeight":I
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    move-result v3

    .local v3, "regionWidth":I
    iget v5, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .local v5, "x":F
    iget v6, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .local v6, "y":F
    sub-int v7, p1, v3

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v8

    float-to-int v0, v7

    .local v0, "left":I
    sub-int v7, p2, v2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    float-to-int v4, v7

    .local v4, "top":I
    add-int v7, v0, v3

    add-int v8, v4, v2

    invoke-virtual {p3, v0, v4, v7, v8}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    return-void
.end method

.method private manageChangeListener()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .local v2, "needsListener":Z
    :goto_0
    iget-boolean v3, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v3, v2, :cond_0

    iput-boolean v2, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const v4, 0x3d5a511a    # 0.0533f

    mul-float v1, v3, v4

    .local v1, "fontSize":F
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v1    # "fontSize":F
    :cond_0
    :goto_1
    return-void

    .end local v2    # "needsListener":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "needsListener":Z
    :cond_2
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1
.end method

.method private prepForPrune()V
    .locals 6

    .prologue
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method private prune()V
    .locals 6

    .prologue
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_3
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .locals 2
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .prologue
    const/16 v1, 0xcc

    const/16 v0, 0xcb

    packed-switch p1, :pswitch_data_0

    move v0, p1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    if-nez p0, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 6
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    sget-object v5, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "regionCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    sub-int v6, p4, p2

    .local v6, "viewportWidth":I
    sub-int v5, p5, p3

    .local v5, "viewportHeight":I
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v8

    const v9, 0x3d5a511a    # 0.0533f

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v6, v5, v3}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v6, v5, v0}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v12, -0x2

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v5, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .local v5, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TextTrackCue;

    .local v3, "cue":Landroid/media/TextTrackCue;
    iget-object v8, v3, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .local v8, "region":Landroid/media/TextTrackRegion;
    if-eqz v8, :cond_1

    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .local v9, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v9, :cond_0

    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {v9, v1, v8, v0, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .restart local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v9, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    :cond_0
    invoke-virtual {v9, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .local v4, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v4, :cond_2

    new-instance v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {v4, v1, v3, v0, v5}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .restart local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    :cond_2
    invoke-virtual {v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    invoke-virtual {v4, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    goto :goto_1

    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    .end local v8    # "region":Landroid/media/TextTrackRegion;
    :cond_3
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    move-result v10

    .local v10, "width":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v6

    .local v6, "height":I
    if-lez v10, :cond_5

    if-lez v6, :cond_5

    invoke-virtual {p0, v10, v6}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    :goto_2
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v11, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setActiveCues width : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .prologue
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    goto :goto_0
.end method
