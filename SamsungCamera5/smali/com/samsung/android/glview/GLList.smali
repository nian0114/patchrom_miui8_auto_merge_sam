.class public Lcom/samsung/android/glview/GLList;
.super Lcom/samsung/android/glview/GLAbsList;
.source "GLList.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 38
    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 46
    instance-of v0, p1, Lcom/samsung/android/glview/GLList;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 50
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    .line 61
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 62
    return-void

    .line 55
    :cond_2
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    goto :goto_0
.end method

.method public refreshList()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-super {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "offset":F
    iget-object v3, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 73
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 74
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v4, :cond_1

    .line 75
    invoke-virtual {v2, v5, v1, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 77
    :cond_1
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v7, :cond_0

    .line 78
    invoke-virtual {v2, v1, v5, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 82
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v4, :cond_4

    .line 83
    iput v1, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 87
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 88
    return-void

    .line 84
    :cond_4
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v7, :cond_3

    .line 85
    iput v1, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    goto :goto_1
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 102
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 103
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    goto :goto_0
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 9
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 117
    iput p2, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    .line 119
    iget-object v5, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 120
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 124
    :cond_1
    iget v5, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLList;->setScrollOrientation(I)V

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "offset":F
    iget-object v5, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v5}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v0

    .line 128
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 129
    iget-object v5, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    .line 130
    .local v4, "view":Lcom/samsung/android/glview/GLView;
    if-nez v4, :cond_2

    .line 161
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :goto_2
    return-void

    .line 132
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    iget v5, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v5, v7, :cond_4

    .line 133
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    neg-float v5, v3

    iput v5, p0, Lcom/samsung/android/glview/GLList;->mScrollSumY:F

    .line 136
    :cond_3
    invoke-virtual {v4, v8, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 137
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v3, v5

    .line 145
    :goto_3
    invoke-virtual {v4, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 146
    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setForcedClipping(Z)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 140
    neg-float v5, v3

    iput v5, p0, Lcom/samsung/android/glview/GLList;->mScrollSumX:F

    .line 142
    :cond_5
    invoke-virtual {v4, v3, v8}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 143
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_3

    .line 150
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    iget v5, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v5, v7, :cond_8

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 160
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    goto :goto_2

    .line 155
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    goto :goto_4
.end method

.method public declared-synchronized setHeight(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    const/4 v3, 0x1

    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLList;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    .line 167
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v1, v3, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLList;->mBouncing:Z

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V

    .line 182
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 176
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 177
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    goto :goto_0

    .line 182
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSize(FF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v5, 0x1

    .line 190
    iget-object v4, p0, Lcom/samsung/android/glview/GLList;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "widthChanged":Z
    const/4 v0, 0x0

    .line 194
    .local v0, "heightChanged":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v3

    invoke-static {v3, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const/4 v2, 0x1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v3

    invoke-static {v3, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    const/4 v0, 0x1

    .line 200
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 201
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v5, :cond_2

    .line 202
    iget-object v3, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    goto :goto_0

    .line 218
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 206
    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->refreshList()V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLList;->mBouncing:Z

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 215
    iget-object v3, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V

    .line 218
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    return-void
.end method

.method public setWidth(F)V
    .locals 4
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    .line 223
    iget-object v2, p0, Lcom/samsung/android/glview/GLList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    .line 225
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v1, v3, :cond_0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    goto :goto_0

    .line 241
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 230
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLList;->mBouncing:Z

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->refreshList()V

    .line 241
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    return-void
.end method
