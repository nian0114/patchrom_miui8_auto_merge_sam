.class public Lcom/samsung/android/glview/GLViewGroup;
.super Lcom/samsung/android/glview/GLView;
.source "GLViewGroup.java"


# static fields
.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000


# instance fields
.field private mDepthSortNeeded:Z

.field protected mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroupFlags:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 96
    return-void
.end method

.method private initViewGroup()V
    .locals 1

    .prologue
    .line 908
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setDescendantFocusability(I)V

    .line 909
    return-void
.end method


# virtual methods
.method public addAccessibilityBaseViewNode(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "listBaseViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "listChildViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 118
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setParentId(I)V

    .line 119
    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->addAccessibilityChildViewNode(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 151
    if-nez p2, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 154
    :cond_0
    iput-object p0, p2, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 161
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 163
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 166
    :cond_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 134
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 142
    :cond_1
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 179
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-void
.end method

.method public contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 193
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 196
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 210
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 220
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Clip(Manual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLViewGroup;->mManualClip:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->dumpViewHierarchy(I)V

    goto :goto_2

    .line 227
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 17
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 239
    const/4 v4, 0x0

    .line 332
    :cond_0
    return-object v4

    .line 241
    :cond_1
    const/4 v4, 0x0

    .line 243
    .local v4, "candidateView":Lcom/samsung/android/glview/GLView;
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v11

    .line 244
    .local v11, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v11, :cond_2

    .line 245
    move-object v4, v11

    .line 248
    :cond_2
    const/4 v12, 0x0

    .line 249
    .local v12, "tempViewLeft":F
    const/4 v13, 0x0

    .line 250
    .local v13, "tempViewTop":F
    const/4 v5, 0x0

    .line 251
    .local v5, "candidateViewLeft":F
    const/4 v6, 0x0

    .line 252
    .local v6, "candidateViewTop":F
    const/4 v9, 0x0

    .line 253
    .local v9, "horizontalOffset":F
    const/4 v14, 0x0

    .line 254
    .local v14, "verticalOffset":F
    const/4 v2, 0x0

    .line 255
    .local v2, "candidateHorizontalOffset":F
    const/4 v3, 0x0

    .line 256
    .local v3, "candidateVerticalOffset":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v7, v15

    .line 257
    .local v7, "focusedViewLeft":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v8, v15

    .line 259
    .local v8, "focusedViewTop":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 260
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 261
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v11

    .line 262
    if-eqz v11, :cond_3

    .line 263
    if-nez v4, :cond_4

    .line 264
    move-object v4, v11

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v12, v15

    .line 267
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v13, v15

    .line 268
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v15

    .line 269
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v6, v15

    .line 270
    sub-float v15, v7, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 271
    sub-float v15, v8, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 272
    sub-float v15, v7, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 273
    sub-float v15, v8, v6

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 275
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 278
    :sswitch_0
    cmpl-float v15, v12, v5

    if-ltz v15, :cond_3

    cmpg-float v15, v12, v7

    if-gtz v15, :cond_3

    .line 279
    cmpl-float v15, v9, v14

    if-ltz v15, :cond_3

    .line 280
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_5

    .line 281
    move-object v4, v11

    goto :goto_0

    .line 283
    :cond_5
    cmpg-float v15, v14, v3

    if-gtz v15, :cond_3

    .line 284
    move-object v4, v11

    goto :goto_0

    .line 291
    :sswitch_1
    cmpg-float v15, v12, v5

    if-gtz v15, :cond_3

    cmpl-float v15, v12, v7

    if-ltz v15, :cond_3

    .line 292
    cmpl-float v15, v9, v14

    if-ltz v15, :cond_3

    .line 293
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_6

    .line 294
    move-object v4, v11

    goto/16 :goto_0

    .line 296
    :cond_6
    cmpg-float v15, v14, v3

    if-gtz v15, :cond_3

    .line 297
    move-object v4, v11

    goto/16 :goto_0

    .line 304
    :sswitch_2
    cmpl-float v15, v13, v6

    if-ltz v15, :cond_3

    cmpg-float v15, v13, v8

    if-gtz v15, :cond_3

    .line 305
    cmpg-float v15, v9, v14

    if-gtz v15, :cond_3

    .line 306
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_7

    .line 307
    move-object v4, v11

    goto/16 :goto_0

    .line 309
    :cond_7
    cmpg-float v15, v9, v2

    if-gtz v15, :cond_3

    .line 310
    move-object v4, v11

    goto/16 :goto_0

    .line 317
    :sswitch_3
    cmpg-float v15, v13, v6

    if-gtz v15, :cond_3

    cmpl-float v15, v13, v8

    if-ltz v15, :cond_3

    .line 318
    cmpg-float v15, v9, v14

    if-gtz v15, :cond_3

    .line 319
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_8

    .line 320
    move-object v4, v11

    goto/16 :goto_0

    .line 322
    :cond_8
    cmpg-float v15, v9, v2

    if-gtz v15, :cond_3

    .line 323
    move-object v4, v11

    goto/16 :goto_0

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "resultView":Lcom/samsung/android/glview/GLView;
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v3, :cond_1

    move-object p0, v4

    .line 367
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    :goto_0
    return-object p0

    .line 347
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move-object p0, v4

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p0, v4

    .line 351
    goto :goto_0

    .line 353
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 354
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/glview/GLView;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    .line 356
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v2, :cond_4

    .line 357
    move-object v1, v2

    goto :goto_1

    .line 361
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_5
    if-eqz v1, :cond_6

    move-object p0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v4

    .line 367
    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 387
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 380
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 381
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLView;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 383
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 384
    goto :goto_0

    .line 387
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 3
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 400
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLView;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 403
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_1

    move-object p0, v1

    .line 405
    goto :goto_0

    .line 409
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 429
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 422
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 423
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLView;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 425
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 426
    goto :goto_0

    .line 429
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v3, :cond_1

    .line 471
    :cond_0
    return-object v1

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const/4 v1, 0x0

    .line 453
    .local v1, "resultView":Lcom/samsung/android/glview/GLView;
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 454
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    .line 456
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    if-nez v1, :cond_3

    .line 458
    move-object v1, v2

    .line 461
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 462
    move-object v1, v2

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 464
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 465
    move-object v1, v2

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getIndex(Lcom/samsung/android/glview/GLView;)I
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 492
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 493
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    const/4 v0, 0x0

    .line 494
    .local v0, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 500
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 498
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public initSize()V
    .locals 6

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v2

    .line 542
    .local v2, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    .line 544
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 545
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 547
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 548
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v2, v4, v5

    .line 550
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 551
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 554
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSizeSpecified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    .line 557
    :cond_3
    return-void
.end method

.method public isDepthSorted()Z
    .locals 5

    .prologue
    .line 560
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 561
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    const/4 v2, 0x0

    .line 562
    .local v2, "previousView":Lcom/samsung/android/glview/GLView;
    const/4 v0, 0x0

    .line 563
    .local v0, "currentView":Lcom/samsung/android/glview/GLView;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentView":Lcom/samsung/android/glview/GLView;
    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 565
    .restart local v0    # "currentView":Lcom/samsung/android/glview/GLView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 566
    const/4 v3, 0x0

    .line 570
    :goto_1
    return v3

    .line 568
    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 570
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 2

    .prologue
    .line 575
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 576
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    goto :goto_0

    .line 580
    :cond_0
    return-void
.end method

.method public onDepthUpdated()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 586
    return-void
.end method

.method protected onDraw()V
    .locals 5

    .prologue
    .line 815
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->sortViews()V

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getMatrix()[F

    move-result-object v2

    .line 819
    .local v2, "matrix":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 820
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 821
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 823
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clip()V

    .line 825
    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clearClip()V

    goto :goto_0

    .line 829
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 596
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 597
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 850
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 851
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    goto :goto_0

    .line 854
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 855
    return-void
.end method

.method protected onOutOfScreen()V
    .locals 2

    .prologue
    .line 859
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto :goto_0

    .line 863
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    .line 864
    return-void
.end method

.method public onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    .line 607
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1

    .line 608
    const/4 v5, 0x0

    .line 609
    .local v5, "index":I
    const/4 v4, 0x1

    .line 610
    .local v4, "increment":I
    move v2, v1

    .line 618
    .local v2, "end":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 619
    .local v6, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    move v3, v5

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_0

    .line 620
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 629
    :cond_0
    const/4 v7, 0x0

    :goto_2
    return v7

    .line 612
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "increment":I
    .end local v5    # "index":I
    .end local v6    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    add-int/lit8 v5, v1, -0x1

    .line 613
    .restart local v5    # "index":I
    const/4 v4, -0x1

    .line 614
    .restart local v4    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 622
    .restart local v3    # "i":I
    .restart local v6    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 623
    .local v0, "child":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_4

    .line 624
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 625
    const/4 v7, 0x1

    goto :goto_2

    .line 619
    :cond_4
    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 634
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 635
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 868
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 869
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 873
    return-void
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 658
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 652
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1

    .line 656
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 657
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    goto :goto_0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 664
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    .line 676
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 668
    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 669
    .local v1, "took":Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    .line 672
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 673
    .restart local v1    # "took":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    .line 664
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    .prologue
    .line 479
    sparse-switch p1, :sswitch_data_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    .line 488
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    .line 489
    return-void

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 683
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 684
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 688
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 697
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 698
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 699
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 701
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 702
    .local v0, "childPaddings":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 703
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 707
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 708
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 712
    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 713
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 717
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 718
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 723
    :goto_4
    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 705
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 710
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 715
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 720
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 725
    .end local v0    # "childPaddings":Landroid/graphics/Rect;
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 2
    .param p1, "parameter"    # F

    .prologue
    .line 735
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 736
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    goto :goto_0

    .line 739
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    .line 740
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 750
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    goto :goto_0

    .line 753
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    .line 754
    return-void
.end method

.method public setShaderStep(F)V
    .locals 2
    .param p1, "step"    # F

    .prologue
    .line 764
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 765
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    .line 769
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 776
    return-void
.end method

.method protected sortViews()V
    .locals 3

    .prologue
    .line 876
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 879
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isDepthSorted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    :goto_0
    return-void

    .line 885
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 891
    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/glview/GLViewGroup$1;-><init>(Lcom/samsung/android/glview/GLViewGroup;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 902
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 903
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 904
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    goto :goto_0
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    .line 781
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 782
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 783
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0

    .line 786
    :cond_0
    return-void
.end method

.method public updateSize()V
    .locals 6

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v2

    .line 793
    .local v2, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    .line 794
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 795
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 796
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 797
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 798
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v2, v4, v5

    .line 800
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 801
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 804
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    .line 806
    return-void
.end method
