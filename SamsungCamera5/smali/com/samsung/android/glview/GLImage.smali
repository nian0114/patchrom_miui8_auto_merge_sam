.class public Lcom/samsung/android/glview/GLImage;
.super Lcom/samsung/android/glview/GLView;
.source "GLImage.java"


# instance fields
.field protected mImage:Lcom/samsung/android/glview/GLTexture;

.field protected mImageId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 38
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 135
    if-eqz p6, :cond_0

    .line 136
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 141
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 38
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 205
    if-eqz p6, :cond_0

    .line 206
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 211
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "stretch"    # Z
    .param p7, "imageId"    # I

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 38
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 157
    if-eqz p7, :cond_0

    .line 158
    if-eqz p6, :cond_2

    .line 159
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 168
    :cond_1
    iput p7, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 169
    return-void

    .line 161
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 38
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 184
    if-eqz p6, :cond_0

    .line 185
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 190
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "z"    # F
    .param p5, "imageId"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 225
    if-eqz p5, :cond_0

    .line 226
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 231
    :cond_1
    iput p5, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imageId"    # I

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 245
    if-eqz p4, :cond_0

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 251
    :cond_1
    iput p4, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 95
    if-eqz p4, :cond_0

    .line 96
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 101
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 265
    if-eqz p4, :cond_0

    .line 266
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 271
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 114
    if-eqz p4, :cond_0

    .line 115
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 120
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 59
    if-eqz p2, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 65
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 282
    if-eqz p2, :cond_0

    .line 283
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 288
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 43
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 76
    if-eqz p2, :cond_0

    .line 77
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 299
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 315
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 317
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 325
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 326
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 334
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 345
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v0

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 350
    return-void
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 356
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 520
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public setFlip(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setFlip(Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 371
    :cond_0
    return-void
.end method

.method public declared-synchronized setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 377
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLImage;->mSizeGiven:Z

    if-eqz v0, :cond_3

    .line 379
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 384
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_2
    monitor-exit p0

    return-void

    .line 381
    :cond_3
    :try_start_1
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 390
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 391
    .local v1, "imageWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 393
    .local v0, "imageHeight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 394
    :cond_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    return v2

    .line 397
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 398
    iput p2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 403
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setImageResources(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 410
    :cond_0
    if-eqz p1, :cond_1

    .line 411
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 414
    :cond_1
    return-void
.end method

.method public setSampleSize(I)V
    .locals 1
    .param p1, "sampleSize"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLByteArrayTexture;->setSampleSize(I)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLFileTexture;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setShaderParameter(F)V
    .locals 1
    .param p1, "parameter"    # F

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 435
    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 456
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 460
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 465
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 472
    iget-object v3, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v3, v3, Lcom/samsung/android/glview/GLResourceTexture;

    if-nez v3, :cond_0

    .line 486
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 478
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 480
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 481
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 495
    :cond_0
    return-void
.end method
