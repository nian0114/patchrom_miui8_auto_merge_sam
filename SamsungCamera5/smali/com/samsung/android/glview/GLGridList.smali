.class public Lcom/samsung/android/glview/GLGridList;
.super Lcom/samsung/android/glview/GLAbsList;
.source "GLGridList.java"


# static fields
.field public static final AUTO_FIT:I = -0x1


# instance fields
.field private mColumnWidth:F

.field private mHorizontalSpacing:F

.field private mItemCount:I

.field private mLeftPadding:F

.field private mNeedToChangeLeftPadding:Z

.field private mNeedToChangeTopPadding:Z

.field private mNumColumns:I

.field private mTopPadding:F

.field private mVerticalSpacing:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "columnWidth"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 34
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 38
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 42
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 44
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 47
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 72
    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "columnWidth"    # F
    .param p7, "hSpacing"    # F
    .param p8, "vSpacing"    # F
    .param p9, "leftPadding"    # F
    .param p10, "topPadding"    # F
    .param p11, "numColumns"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 34
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 38
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 42
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 44
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 47
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 79
    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 80
    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 81
    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 82
    iput p11, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 83
    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 84
    iput p10, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "columnWidth"    # F
    .param p7, "hSpacing"    # F
    .param p8, "vSpacing"    # F
    .param p9, "numColumns"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 34
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 38
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 42
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 44
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 47
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 92
    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 93
    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 94
    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 95
    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 96
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v0, v1, :cond_1

    .line 337
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 338
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 342
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    goto :goto_0
.end method

.method private updateContentArea(F)V
    .locals 4
    .param p1, "offset"    # F

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 362
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 355
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 357
    .local v0, "viewHeight":F
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 358
    add-float v2, p1, v0

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_0

    .line 360
    :cond_2
    add-float v2, p1, v1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto :goto_0
.end method

.method private updateListPadding()V
    .locals 3

    .prologue
    .line 365
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 366
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getNumColumns()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    return v0
.end method

.method public declared-synchronized refreshList()V
    .locals 11

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 111
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 115
    :cond_0
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v8, :cond_1

    .line 116
    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "nextLeft":F
    const/4 v4, 0x0

    .line 123
    .local v4, "offset":F
    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 125
    .local v3, "numColumns":I
    const/4 v5, 0x0

    .line 126
    .local v5, "pos":I
    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/glview/GLView;

    .line 129
    .local v7, "view":Lcom/samsung/android/glview/GLView;
    rem-int v0, v5, v3

    .line 130
    .local v0, "column":I
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v0

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-float v2, v8, v9

    .line 131
    div-int v6, v5, v3

    .line 132
    .local v6, "row":I
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v6

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v4, v8, v9

    .line 133
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v4, v8}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 134
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    goto :goto_0

    .line 137
    .end local v0    # "column":I
    .end local v6    # "row":I
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 139
    invoke-direct {p0, v4}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 109
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v2    # "nextLeft":F
    .end local v3    # "numColumns":I
    .end local v4    # "offset":F
    .end local v5    # "pos":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 13
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v12, 0x1

    .line 150
    monitor-enter p0

    if-nez p1, :cond_0

    .line 151
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 153
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 154
    iget-object v9, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v9}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    .line 155
    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    .line 157
    iget-object v9, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 162
    :cond_1
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    .line 164
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v11, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 168
    :cond_2
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v9, :cond_3

    .line 169
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "nextLeft":F
    const/4 v4, 0x0

    .line 176
    .local v4, "offset":F
    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 178
    .local v3, "numColumns":I
    const/4 v7, 0x0

    .local v7, "startPos":I
    :goto_1
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v7, v9, :cond_9

    .line 179
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 181
    add-int v9, v7, v3

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 183
    .local v1, "lastColumnPos":I
    move v5, v7

    .local v5, "pos":I
    :goto_2
    if-ge v5, v1, :cond_8

    .line 184
    iget-object v9, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 185
    .local v8, "view":Lcom/samsung/android/glview/GLView;
    if-nez v8, :cond_4

    .line 213
    .end local v1    # "lastColumnPos":I
    .end local v5    # "pos":I
    .end local v8    # "view":Lcom/samsung/android/glview/GLView;
    :goto_3
    monitor-exit p0

    return-void

    .line 187
    .restart local v1    # "lastColumnPos":I
    .restart local v5    # "pos":I
    .restart local v8    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    :try_start_2
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v9, v12, :cond_7

    .line 188
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 189
    neg-float v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumY:F

    .line 192
    :cond_5
    div-int v6, v5, v3

    .line 193
    .local v6, "row":I
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v9, v10

    int-to-float v10, v6

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v4, v9, v10

    .line 195
    invoke-virtual {v8, v2, v4}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 196
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    add-float/2addr v2, v9

    .line 197
    add-int/lit8 v9, v1, -0x1

    if-ge v5, v9, :cond_6

    .line 198
    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v2, v9

    .line 205
    .end local v6    # "row":I
    :cond_6
    :goto_4
    invoke-virtual {v8, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 206
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 201
    :cond_7
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 202
    neg-float v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumX:F

    goto :goto_4

    .line 178
    .end local v8    # "view":Lcom/samsung/android/glview/GLView;
    :cond_8
    add-int/2addr v7, v3

    goto :goto_1

    .line 210
    .end local v1    # "lastColumnPos":I
    .end local v5    # "pos":I
    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V

    .line 212
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 219
    return-void
.end method

.method public setNumColumns(IZ)V
    .locals 1
    .param p1, "columns"    # I
    .param p2, "update"    # Z

    .prologue
    .line 228
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 229
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 231
    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 235
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 243
    return-void
.end method

.method public declared-synchronized setSize(FFZ)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "update"    # Z

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLGridList;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 249
    if-eqz p3, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mBouncing:Z

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setVisibleArea()V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V

    .line 260
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(FFZ)V
    .locals 1
    .param p1, "hSpacing"    # F
    .param p2, "vSpacing"    # F
    .param p3, "update"    # Z

    .prologue
    .line 271
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 273
    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 274
    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 278
    :cond_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 284
    return-void
.end method

.method public declared-synchronized updateStartOffset(F)V
    .locals 9
    .param p1, "offset"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 292
    monitor-enter p0

    const/4 v1, 0x0

    .line 293
    .local v1, "scrollable":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v4, v2, :cond_6

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_3

    move v1, v2

    .line 298
    :goto_1
    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float v3, v2, v3

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutY()F

    move-result v3

    sub-float p1, v2, v3

    .line 308
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 292
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v3

    .line 297
    goto :goto_1

    .line 304
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutY()F

    move-result v3

    sub-float p1, v2, v3

    goto :goto_2

    .line 312
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_5
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto/16 :goto_0

    .line 315
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_8

    move v1, v2

    .line 316
    :goto_4
    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float v3, v2, v3

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_7

    .line 319
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9

    .line 320
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutX()F

    move-result v3

    sub-float p1, v2, v3

    .line 326
    :cond_7
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_6

    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_8
    move v1, v3

    .line 315
    goto :goto_4

    .line 322
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutX()F

    move-result v3

    sub-float p1, v2, v3

    goto :goto_5

    .line 330
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_a
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
