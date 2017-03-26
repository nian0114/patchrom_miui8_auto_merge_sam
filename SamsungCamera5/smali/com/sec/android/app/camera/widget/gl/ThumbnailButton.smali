.class public Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# static fields
.field private static final BUTTON_TOUCH_AREA_OFFSET:I

.field private static final SHOOTINGMODE_BUTTON_DIAMETER:I

.field protected static final TAG:Ljava/lang/String; = "ThumbnailButton"

.field private static final THUMBNAIL_FRAME_HEIGHT:I

.field private static final THUMBNAIL_FRAME_WIDTH:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_POS_X:I

.field private static final THUMBNAIL_IMAGE_POS_Y:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private final THUMBNAIL_ANIMATION_DURATION:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mFrameButton:Lcom/samsung/android/glview/GLButton;

.field private mIdxNewThumbnail:I

.field private mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

.field private mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

.field private mThumbnailOrientation:I

.field private mThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f090254

    .line 42
    const v0, 0x7f09025c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 43
    const v0, 0x7f090256

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 44
    const v0, 0x7f090258

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 45
    const v0, 0x7f090259

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 46
    const v0, 0x7f09025a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 47
    const v0, 0x7f090257

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 48
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    .line 49
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    .line 51
    const v0, 0x7f090213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    .line 52
    const v0, 0x7f090201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->SHOOTINGMODE_BUTTON_DIAMETER:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 54
    const v0, 0x7f0a001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    .line 59
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClipping(Z)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->updateEmpty()V

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    .line 82
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 83
    return-void
.end method

.method public noImage()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRotatableForCoverCamera(Z)V
    .locals 2
    .param p1, "rotatable"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 103
    if-nez p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public setThumbnailOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 111
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 115
    return-void
.end method

.method public declared-synchronized update()V
    .locals 21

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v2, "ThumbnailButton.update"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThumbnail.latest**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    .line 232
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_1
    const/16 v18, 0x0

    .line 125
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 127
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 130
    :cond_2
    const-string v2, "ThumbnailButton"

    const-string v3, "returning because thumbnail uri is the same"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 118
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 134
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    if-nez v2, :cond_d

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/LatestMedia;->getId()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v3, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 154
    :cond_4
    :goto_1
    if-eqz v18, :cond_5

    .line 155
    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_HEIGHT:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 158
    :cond_5
    const/16 v20, 0x1

    .line 160
    .local v20, "noThumbnail":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 166
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 172
    :cond_7
    if-eqz v18, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v2, v9, v10

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 182
    :cond_8
    const/16 v19, 0x0

    .line 183
    .local v19, "defaultOrientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 184
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 185
    const/16 v19, 0x3

    .line 196
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_a

    .line 200
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 201
    .local v17, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 202
    const/high16 v9, 0x3fc00000    # 1.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v13, v2, v3

    new-instance v14, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v14}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 208
    .end local v17    # "animSet":Landroid/view/animation/AnimationSet;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 210
    const/16 v20, 0x0

    .line 211
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 215
    .end local v19    # "defaultOrientation":I
    :cond_b
    if-nez v20, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 216
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 217
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 230
    :goto_3
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThumbnail.latest**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 232
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 142
    .end local v20    # "noThumbnail":Z
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_1

    .line 146
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    if-nez v2, :cond_f

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/LatestMedia;->getId()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v3, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_1

    .line 150
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_1

    .line 187
    .restart local v19    # "defaultOrientation":I
    .restart local v20    # "noThumbnail":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v2

    add-int/lit16 v2, v2, 0x10e

    rem-int/lit16 v2, v2, 0x168

    div-int/lit8 v19, v2, 0x5a

    goto/16 :goto_2

    .line 190
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v2

    div-int/lit8 v19, v2, 0x5a

    .line 193
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 232
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "defaultOrientation":I
    .end local v20    # "noThumbnail":Z
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "noThumbnail":Z
    :cond_13
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 222
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f020114

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    goto/16 :goto_3

    .line 225
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_16

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 228
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f020115

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3
.end method

.method public declared-synchronized update(Landroid/graphics/Bitmap;IZ)V
    .locals 18
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "needFlip"    # Z

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThumbnail**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    :try_start_1
    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_HEIGHT:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 245
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 252
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v2, v9, v10

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 256
    if-eqz p3, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 260
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 266
    :cond_6
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x10e

    rem-int/lit16 v2, v2, 0x168

    div-int/lit8 p2, v2, 0x5a

    .line 272
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 275
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 276
    .local v17, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 277
    const v9, 0x3fa66666    # 1.3f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3fa66666    # 1.3f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v13, v2, v3

    new-instance v14, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v14}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 278
    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 291
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f020115

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 293
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThumbnail**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 237
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "animSet":Landroid/view/animation/AnimationSet;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 268
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_8
    :try_start_2
    div-int/lit8 p2, p2, 0x5a

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public updateEmpty()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    .line 304
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 306
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v5, v2

    const v6, 0x7f020114

    move v2, v8

    move v3, v8

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->BUTTON_TOUCH_AREA_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->SHOOTINGMODE_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 320
    :cond_1
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    goto/16 :goto_0
.end method
