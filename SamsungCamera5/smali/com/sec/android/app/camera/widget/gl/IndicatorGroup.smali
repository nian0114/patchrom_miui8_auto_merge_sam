.class public Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "IndicatorGroup.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# instance fields
.field private mDirection:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    .line 46
    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x1

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 54
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    .line 57
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    .line 65
    return-void
.end method

.method public setVisibility(Lcom/samsung/android/glview/GLView;I)V
    .locals 7
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "visibility"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "padding":I
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 78
    .local v2, "v":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 79
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    int-to-float v3, v1

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 82
    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 83
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 84
    goto :goto_1

    .line 86
    :pswitch_1
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->getWidth()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 88
    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1

    .line 91
    :pswitch_2
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->getHeight()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 93
    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1

    .line 96
    :pswitch_3
    int-to-float v3, v1

    invoke-virtual {v2, v6, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 97
    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 98
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    .line 103
    .end local v2    # "v":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p1, v5}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
