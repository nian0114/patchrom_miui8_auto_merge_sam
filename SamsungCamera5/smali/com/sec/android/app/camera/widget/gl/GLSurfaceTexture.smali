.class public Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLSurfaceTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLSurfaceTexture"

.field private static mLock:Ljava/lang/Object;

.field private static mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;


# instance fields
.field private mEffectID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "effectID"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 41
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    .line 55
    const/16 v0, 0x1f40

    if-lt p6, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p6, v0, :cond_0

    .line 56
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    goto :goto_0
.end method

.method public static getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    .locals 3

    .prologue
    .line 63
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "GLSurfaceTexture"

    const-string v2, "SecEffectThumbnailProcessor create new instance"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    .line 68
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 78
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "GLSurfaceTexture"

    const-string v2, "SecEffectThumbnailProcessor release instance"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->releaseInstance()V

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    .line 84
    :cond_0
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTexture()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLPreviewData;->getSurfaceCoordXOffset()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    .line 112
    .local v14, "mXOffset":F
    const/high16 v15, 0x3e000000    # 0.125f

    .line 114
    .local v15, "mYOffset":F
    move v11, v14

    .line 115
    .local v11, "mSurfaceCoordLeft":F
    move v13, v15

    .line 116
    .local v13, "mSurfaceCoordTop":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v12, v1, v14

    .line 117
    .local v12, "mSurfaceCoordRight":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v1, v15

    .line 118
    .local v10, "mSurfaceCoordBottom":F
    const/4 v1, 0x4

    new-array v9, v1, [F

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getLeft()F

    move-result v2

    aput v2, v9, v1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getTop()F

    move-result v2

    aput v2, v9, v1

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getRight()F

    move-result v2

    aput v2, v9, v1

    const/4 v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getBottom()F

    move-result v2

    aput v2, v9, v1

    .line 120
    .local v9, "mRect":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mViewMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getAlpha()F

    move-result v16

    .line 123
    .local v16, "modifiedAlpha":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v16, v1

    if-lez v1, :cond_1

    .line 124
    const/high16 v16, 0x3f800000    # 1.0f

    .line 129
    :goto_1
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    invoke-virtual {v1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const/16 v1, 0x8

    new-array v8, v1, [F

    const/4 v1, 0x0

    aput v11, v8, v1

    const/4 v1, 0x1

    aput v13, v8, v1

    const/4 v1, 0x2

    aput v12, v8, v1

    const/4 v1, 0x3

    aput v13, v8, v1

    const/4 v1, 0x4

    aput v12, v8, v1

    const/4 v1, 0x5

    aput v10, v8, v1

    const/4 v1, 0x6

    aput v11, v8, v1

    const/4 v1, 0x7

    aput v10, v8, v1

    .line 132
    .local v8, "mCoordFrontCamera":[F
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setEffect(I)V

    .line 133
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mViewMatrix:[F

    move/from16 v0, v16

    invoke-virtual {v1, v2, v9, v8, v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->draw([F[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 107
    .end local v8    # "mCoordFrontCamera":[F
    .end local v9    # "mRect":[F
    .end local v10    # "mSurfaceCoordBottom":F
    .end local v11    # "mSurfaceCoordLeft":F
    .end local v12    # "mSurfaceCoordRight":F
    .end local v13    # "mSurfaceCoordTop":F
    .end local v14    # "mXOffset":F
    .end local v15    # "mYOffset":F
    .end local v16    # "modifiedAlpha":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 126
    .restart local v9    # "mRect":[F
    .restart local v10    # "mSurfaceCoordBottom":F
    .restart local v11    # "mSurfaceCoordLeft":F
    .restart local v12    # "mSurfaceCoordRight":F
    .restart local v13    # "mSurfaceCoordTop":F
    .restart local v14    # "mXOffset":F
    .restart local v15    # "mYOffset":F
    .restart local v16    # "modifiedAlpha":F
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 135
    :cond_2
    const/16 v1, 0x8

    :try_start_2
    new-array v7, v1, [F

    const/4 v1, 0x0

    aput v12, v7, v1

    const/4 v1, 0x1

    aput v13, v7, v1

    const/4 v1, 0x2

    aput v11, v7, v1

    const/4 v1, 0x3

    aput v13, v7, v1

    const/4 v1, 0x4

    aput v11, v7, v1

    const/4 v1, 0x5

    aput v10, v7, v1

    const/4 v1, 0x6

    aput v12, v7, v1

    const/4 v1, 0x7

    aput v10, v7, v1

    .line 137
    .local v7, "mCoord":[F
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setEffect(I)V

    .line 138
    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mSecEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mViewMatrix:[F

    move/from16 v0, v16

    invoke-virtual {v1, v2, v9, v7, v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->draw([F[F[FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onLoad()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->initSize()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return v1

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return v2

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 148
    return-void
.end method
