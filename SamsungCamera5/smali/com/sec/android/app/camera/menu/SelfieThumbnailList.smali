.class public Lcom/sec/android/app/camera/menu/SelfieThumbnailList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "SelfieThumbnailList.java"


# static fields
.field private static final NUMBER_OF_ITEMS:I

.field protected static final TAG:Ljava/lang/String; = "SelfieThumbnailList"

.field private static final THUMBNAIL_COLOR:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_OFFSET:I

.field private static final THUMBNAIL_THICKNESS:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mIntervalValue:I

.field private mNumOfItem:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

.field private mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0901cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_LIST_HEIGHT:I

    .line 40
    const v0, 0x7f0901cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    .line 41
    const v0, 0x7f0901cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    .line 42
    const v0, 0x7f0901cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_OFFSET:I

    .line 43
    const v0, 0x7f0a003e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    .line 45
    const v0, 0x7f0c003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_COLOR:I

    .line 46
    const v0, 0x7f0901ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mRect:Landroid/graphics/RectF;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    .line 49
    iput v9, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mIntervalValue:I

    .line 50
    sget v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    new-array v0, v0, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    .line 51
    sget v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    new-array v0, v0, [Lcom/samsung/android/glview/GLNinePatch;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_THICKNESS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget v0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v7, v0, :cond_0

    .line 63
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_LIST_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_OFFSET:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v7, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v7

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v7

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v7

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 69
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_LIST_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_OFFSET:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v7, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201d0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    aput-object v0, v8, v7

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method private addItem(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 121
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 124
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    .line 125
    return-void
.end method

.method private refreshBackground()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v0, v1, :cond_1

    .line 129
    iget v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mIntervalValue:I

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_1
    return-void
.end method

.method private declared-synchronized releaseResources()V
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    const-string v1, "SelfieThumbnailList"

    const-string v2, "releaseResources"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v0, v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailFrame:[Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addThumbnail([BI)V
    .locals 12
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 77
    if-eqz p1, :cond_1

    .line 78
    sget v2, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 80
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 83
    .local v10, "rotatedBitmap":Landroid/graphics/Bitmap;
    sget v1, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    invoke-static {v10, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 85
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v7, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mRect:Landroid/graphics/RectF;

    sget v2, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    new-instance v9, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v9, v1, v11, v11, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    .line 90
    .local v9, "mThumbnail":Lcom/samsung/android/glview/GLImage;
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->addItem(Lcom/samsung/android/glview/GLView;)V

    .line 92
    if-eqz v10, :cond_0

    .line 93
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    const/4 v10, 0x0

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "mThumbnail":Lcom/samsung/android/glview/GLImage;
    .end local v10    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public declared-synchronized resetList()V
    .locals 4

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 105
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mThumbnailList:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 106
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mNumOfItem:I

    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->refreshBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setIntervalValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->mIntervalValue:I

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SelfieThumbnailList;->refreshBackground()V

    .line 115
    return-void
.end method
