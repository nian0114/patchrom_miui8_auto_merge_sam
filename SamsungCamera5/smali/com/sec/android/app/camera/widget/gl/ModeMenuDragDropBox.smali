.class public Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
.super Lcom/sec/android/app/camera/widget/gl/DragDropBox;
.source "ModeMenuDragDropBox.java"


# instance fields
.field private mEditMenu:Lcom/samsung/android/glview/GLView;

.field private mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mRelocating:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "previous"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .param p3, "editMenu"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 35
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mRelocating:Z

    .line 37
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setNext(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V

    .line 41
    :cond_0
    iput-object p3, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mEditMenu:Lcom/samsung/android/glview/GLView;

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mRelocating:Z

    return p1
.end method

.method private relocateItem(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V
    .locals 9
    .param p1, "fromDragDropBox"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 224
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mInScreen:Z

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 226
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDroppability(Z)V

    .line 262
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    .line 230
    .local v1, "fromX":F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    .line 231
    .local v2, "fromY":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 234
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 235
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 237
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 238
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 240
    invoke-virtual {p2, v7}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 242
    iput-boolean v8, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mRelocating:Z

    .line 243
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDroppability(Z)V

    .line 245
    new-instance v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/samsung/android/glview/GLView;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addToFirst(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addToFirst(Lcom/samsung/android/glview/GLView;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftRight()Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public addToLast(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addToLast(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftLeft()Z

    .line 61
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 68
    instance-of v0, p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mEditMenu:Lcom/samsung/android/glview/GLView;

    .line 70
    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDraggable(Z)V

    .line 78
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 79
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method protected cancelDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addToLast(Lcom/samsung/android/glview/GLView;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 192
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    .line 202
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDroppability(Z)V

    .line 203
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 199
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    .line 200
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutX()F

    move-result v0

    goto :goto_0
.end method

.method public getLayoutY()F
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutY()F

    move-result v0

    goto :goto_0
.end method

.method public getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mEditMenu:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    return-object v0
.end method

.method public getNext()Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method public moveEmptyToLast()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftLeft()Z

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->moveEmptyToLast()V

    .line 127
    :cond_1
    return-void
.end method

.method protected onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "fromDropBox"    # Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDraggable(Z)V

    .line 219
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mRelocating:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftLeft()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftRight()Z

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setEmpty()V

    goto :goto_0
.end method

.method public setNext(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V
    .locals 0
    .param p1, "next"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 107
    return-void
.end method

.method public setPrevious(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V
    .locals 0
    .param p1, "Previous"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 115
    return-void
.end method

.method public shiftLeft()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 165
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setEmpty()V

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shiftRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 183
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->shiftRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setEmpty()V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
