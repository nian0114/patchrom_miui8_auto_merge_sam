.class public Lcom/sec/android/app/camera/widget/gl/DragDropBox;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "DragDropBox.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;,
        Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragDropBox"


# instance fields
.field protected lastDragCoord:[F

.field protected mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

.field private mDraggable:Z

.field private mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

.field private mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

.field private mDroppable:Z

.field protected mView:Lcom/samsung/android/glview/GLView;

.field protected mViewToDrag:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .line 57
    return-void
.end method

.method private findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 8
    .param p1, "rootView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move-object p1, v5

    .line 282
    .end local p1    # "rootView":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p1

    .line 262
    .restart local p1    # "rootView":Lcom/samsung/android/glview/GLView;
    :cond_0
    instance-of v6, p1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v6, :cond_1

    .line 263
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 264
    check-cast p1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    goto :goto_0

    .line 266
    :cond_1
    instance-of v6, p1, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_3

    move-object v4, p1

    .line 267
    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    .line 268
    .local v4, "v":Lcom/samsung/android/glview/GLViewGroup;
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v2

    .line 269
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 272
    :try_start_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    .local v3, "tempView":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :goto_2
    if-eqz v3, :cond_2

    move-object p1, v3

    .line 278
    goto :goto_0

    .line 273
    .end local v3    # "tempView":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "DragDropBox"

    const-string v7, "This view already removed!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x0

    .restart local v3    # "tempView":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    goto :goto_2

    .line 269
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "tempView":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .end local v4    # "v":Lcom/samsung/android/glview/GLViewGroup;
    :cond_3
    move-object p1, v5

    .line 282
    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    .line 63
    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 64
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(ILcom/samsung/android/glview/GLView;)V

    .line 65
    return-void
.end method

.method public addViewToDrag(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    .line 70
    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 72
    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    return v0
.end method

.method public getDroppability()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/16 v2, 0x63

    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 9
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    .line 118
    .local v7, "lastX":F
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    .line 119
    .local v8, "lastY":F
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mapPointReverse([FFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translate(FF)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    .line 126
    .local v6, "dropBox":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    if-eqz v6, :cond_6

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eq v0, v6, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    .line 131
    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .line 137
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 139
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/glview/GLView$DragListener;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragItemInDragDropBox(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 148
    :cond_5
    return-void

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->resetScale()V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v0

    .line 156
    .local v0, "dropBox":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->cancelDrag()V

    .line 172
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragEndItemInDragDropBox(Lcom/samsung/android/glview/GLView;)V

    .line 182
    .end local v0    # "dropBox":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :cond_1
    return-void

    .line 161
    .restart local v0    # "dropBox":Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    const v1, 0x3f99999a    # 1.2f

    .line 186
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mapPointReverse([FFF)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty()V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLView;->scale(FF)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->bringToFront()V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLView$DragListener;->onDragStart(Lcom/samsung/android/glview/GLView;FF)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragStartItemInDragDropBox(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method protected onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "fromDropBox"    # Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;->onDrop(Lcom/samsung/android/glview/GLView;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onTouchOver(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 209
    return-void
.end method

.method public removeView()Lcom/samsung/android/glview/GLView;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    .line 213
    .local v0, "viewToRemove":Lcom/samsung/android/glview/GLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty()V

    .line 215
    return-object v0
.end method

.method public setDragDropBoxEventListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    .line 220
    return-void
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 225
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    .line 90
    return-void
.end method

.method public setDropListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    .line 229
    return-void
.end method

.method public setDroppability(Z)V
    .locals 0
    .param p1, "droppable"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    .line 98
    return-void
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTag(I)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDraggable(Z)V

    .line 255
    return-void
.end method
