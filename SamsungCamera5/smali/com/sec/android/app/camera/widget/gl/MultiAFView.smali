.class public Lcom/sec/android/app/camera/widget/gl/MultiAFView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "MultiAFView.java"


# static fields
.field private static final FRAME_HEIGHT_NORMAL_RATIO:F

.field private static final FRAME_HEIGHT_SQUARE_RATIO:F

.field private static final FRAME_HEIGHT_WIDE_RATIO:F

.field private static final FRAME_IMAGE_WIDTH:F

.field private static final FRAME_MARGIN_LEFT_NORMAL_RATIO:F

.field private static final FRAME_MARGIN_LEFT_SQUARE_RATIO:F

.field private static final FRAME_MARGIN_LEFT_WIDE_RATIO:F

.field private static final FRAME_MARGIN_TOP_NORMAL_RATIO:F

.field private static final FRAME_MARGIN_TOP_SQUARE_RATIO:F

.field private static final FRAME_MARGIN_TOP_WIDE_RATIO:F

.field private static final FRAME_WIDTH_NORMAL_RATIO:F

.field private static final FRAME_WIDTH_SQUARE_RATIO:F

.field private static final FRAME_WIDTH_WIDE_RATIO:F

.field private static final NUM_OF_COLUMNS_NORMAL_RATIO:I

.field private static final NUM_OF_COLUMNS_SQUARE_RATIO:I

.field private static final NUM_OF_COLUMNS_WIDE_RATIO:I

.field private static final NUM_OF_ROWS_NORMAL_RATIO:I

.field private static final NUM_OF_ROWS_SQUARE_RATIO:I

.field private static final NUM_OF_ROWS_WIDE_RATIO:I

.field private static final NUM_OF_VISIBLE_COLUMNS:I

.field private static final NUM_OF_VISIBLE_ROWS:I

.field protected static final TAG:Ljava/lang/String; = "MultiAFView"


# instance fields
.field private mFocusFrame:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0a003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    .line 35
    const v0, 0x7f0a0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    .line 36
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_SQUARE_RATIO:I

    .line 37
    const v0, 0x7f0a0039

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_SQUARE_RATIO:I

    .line 38
    const v0, 0x7f0a003d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 39
    const v0, 0x7f0a003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_WIDE_RATIO:I

    .line 40
    const v0, 0x7f0a003f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_COLUMNS:I

    .line 41
    const v0, 0x7f0a0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_ROWS:I

    .line 43
    const v0, 0x7f090145

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_NORMAL_RATIO:F

    .line 44
    const v0, 0x7f09013c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_NORMAL_RATIO:F

    .line 45
    const v0, 0x7f090146

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_SQUARE_RATIO:F

    .line 46
    const v0, 0x7f09013d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_SQUARE_RATIO:F

    .line 47
    const v0, 0x7f090147

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_WIDE_RATIO:F

    .line 48
    const v0, 0x7f09013e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_WIDE_RATIO:F

    .line 50
    const v0, 0x7f09013f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_NORMAL_RATIO:F

    .line 51
    const v0, 0x7f090140

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_SQUARE_RATIO:F

    .line 52
    const v0, 0x7f090141

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_WIDE_RATIO:F

    .line 53
    const v0, 0x7f090142

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_NORMAL_RATIO:F

    .line 54
    const v0, 0x7f090143

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_SQUARE_RATIO:F

    .line 55
    const v0, 0x7f090144

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_WIDE_RATIO:F

    .line 57
    const v0, 0x7f090337

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 61
    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 58
    sget v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    .line 63
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f020123

    invoke-direct {v1, p1, v2, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v6

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateMultiAFLayout(Landroid/graphics/Rect;)V

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideMultiAFLayout()V
    .locals 4

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    .line 86
    return-void
.end method

.method public onMultiAFChanged([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 89
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    sget v8, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_COLUMNS:I

    sub-int v2, v6, v8

    .line 90
    .local v2, "invalidColumns":I
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sget v8, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_ROWS:I

    sub-int v3, v6, v8

    .line 92
    .local v3, "invalidRows":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v0, v6, :cond_4

    .line 93
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    if-ge v4, v6, :cond_3

    .line 94
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, p1, v6

    .line 95
    .local v5, "result":I
    div-int/lit8 v6, v3, 0x2

    if-lt v0, v6, :cond_0

    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    div-int/lit8 v6, v2, 0x2

    if-lt v4, v6, :cond_0

    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    div-int/lit8 v8, v2, 0x2

    sub-int v8, v2, v8

    sub-int/2addr v6, v8

    if-lt v4, v6, :cond_1

    .line 97
    :cond_0
    const/4 v5, 0x0

    .line 99
    :cond_1
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int v1, v6, v4

    .line 100
    .local v1, "index":I
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v8, v6, v1

    if-ne v5, v9, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const/4 v6, 0x4

    goto :goto_2

    .line 92
    .end local v1    # "index":I
    .end local v5    # "result":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    .line 104
    return-void
.end method

.method public updateMultiAFLayout(Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 107
    const-string v14, "MultiAFView"

    const-string v15, "updateMultiAFLayout"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v11, 0x0

    .line 110
    .local v11, "leftMargin":F
    const/4 v13, 0x0

    .line 111
    .local v13, "topMargin":F
    const/4 v7, 0x0

    .line 112
    .local v7, "frameWidth":F
    const/4 v6, 0x0

    .line 113
    .local v6, "frameHeight":F
    const/4 v5, 0x0

    .line 114
    .local v5, "columns":I
    const/4 v12, 0x0

    .line 115
    .local v12, "rows":I
    if-eqz p1, :cond_1

    .line 116
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v14

    .line 117
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v14

    .line 118
    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gez v14, :cond_0

    .line 119
    const/4 v11, 0x0

    .line 121
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v2

    .line 122
    .local v2, "aspectRatio":D
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v4

    .line 123
    .local v4, "aspectRatioType":I
    if-nez v4, :cond_2

    .line 124
    sget v7, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_WIDE_RATIO:F

    .line 125
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_WIDE_RATIO:F

    .line 126
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_WIDE_RATIO:F

    add-float/2addr v11, v14

    .line 127
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_WIDE_RATIO:F

    add-float/2addr v13, v14

    .line 128
    sget v5, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_WIDE_RATIO:I

    .line 129
    sget v12, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 147
    .end local v2    # "aspectRatio":D
    .end local v4    # "aspectRatioType":I
    :cond_1
    :goto_0
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    sub-int/2addr v14, v5

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    mul-float/2addr v14, v7

    sub-float/2addr v11, v14

    .line 148
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    mul-float/2addr v14, v6

    sub-float/2addr v13, v14

    .line 150
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v8, v14, :cond_5

    .line 151
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    if-ge v10, v14, :cond_4

    .line 152
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    mul-int/2addr v14, v8

    add-int v9, v14, v10

    .line 153
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v14, v14, v9

    int-to-float v15, v10

    mul-float/2addr v15, v7

    add-float/2addr v15, v11

    sget v16, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    sub-float v16, v7, v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    int-to-float v0, v8

    move/from16 v16, v0

    mul-float v16, v16, v6

    add-float v16, v16, v13

    sget v17, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    sub-float v17, v6, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v14, v14, v9

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 151
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 130
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "j":I
    .restart local v2    # "aspectRatio":D
    .restart local v4    # "aspectRatioType":I
    :cond_2
    const/4 v14, 0x2

    if-ne v4, v14, :cond_3

    .line 131
    sget v7, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_SQUARE_RATIO:F

    .line 132
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_SQUARE_RATIO:F

    .line 133
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_SQUARE_RATIO:F

    add-float/2addr v11, v14

    .line 134
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_SQUARE_RATIO:F

    add-float/2addr v13, v14

    .line 135
    sget v5, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_SQUARE_RATIO:I

    .line 136
    sget v12, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_SQUARE_RATIO:I

    goto :goto_0

    .line 138
    :cond_3
    sget v7, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_WIDTH_NORMAL_RATIO:F

    .line 139
    sget v6, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_HEIGHT_NORMAL_RATIO:F

    .line 140
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_LEFT_NORMAL_RATIO:F

    add-float/2addr v11, v14

    .line 141
    sget v14, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_MARGIN_TOP_NORMAL_RATIO:F

    add-float/2addr v13, v14

    .line 142
    sget v5, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLUMNS_NORMAL_RATIO:I

    .line 143
    sget v12, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    goto :goto_0

    .line 150
    .end local v2    # "aspectRatio":D
    .end local v4    # "aspectRatioType":I
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 158
    .end local v10    # "j":I
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    .line 159
    return-void
.end method
