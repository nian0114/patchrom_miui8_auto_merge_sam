.class public Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;
.super Lcom/samsung/android/glview/GLView;
.source "ObjectTrackingView.java"


# static fields
.field private static SCREEN_HEIGHT:I

.field private static SCREEN_WIDTH:I


# instance fields
.field private mRect:Lcom/samsung/android/glview/GLNinePatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->SCREEN_WIDTH:I

    .line 27
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;I)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 34
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 46
    return-void
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 93
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 96
    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 103
    :cond_0
    return-void
.end method

.method public setRect(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 54
    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    cmpl-float v0, p4, v1

    if-lez v0, :cond_2

    sget v0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->SCREEN_WIDTH:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    sget v0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float p3, v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float p4, v0

    .line 61
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setSize(FF)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->translateAbsolute(FF)V

    .line 64
    :cond_2
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 72
    :cond_0
    return-void
.end method
