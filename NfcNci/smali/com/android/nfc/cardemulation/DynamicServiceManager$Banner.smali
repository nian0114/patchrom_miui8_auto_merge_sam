.class Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;
.super Ljava/lang/Object;
.source "DynamicServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/DynamicServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Banner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mLock:Ljava/lang/Object;

    .line 895
    iput-object p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mContext:Landroid/content/Context;

    .line 896
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    .line 897
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->clearDrawableFromMemCache()V

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    return-void
.end method

.method private clearDrawableFromMemCache()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 914
    return-void
.end method

.method private deleteDrawableFromMemCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    return-void
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 918
    if-eqz p1, :cond_0

    instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_1

    :cond_0
    move-object v4, p1

    .line 938
    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    .local v4, "image":Ljava/lang/Object;
    :goto_0
    return-object v4

    .end local v4    # "image":Ljava/lang/Object;
    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v9, p1

    .line 920
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 921
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 922
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 923
    .local v3, "height":I
    const/16 v6, 0x410

    .line 924
    .local v6, "sizeX":I
    const/16 v7, 0x180

    .line 925
    .local v7, "sizeY":I
    if-lez v8, :cond_2

    if-lez v3, :cond_2

    .line 926
    int-to-float v9, v8

    int-to-float v10, v3

    div-float v5, v9, v10

    .line 927
    .local v5, "ratio":F
    int-to-float v9, v6

    div-float/2addr v9, v5

    float-to-int v7, v9

    .line 929
    .end local v5    # "ratio":F
    :cond_2
    const/4 v1, 0x0

    .line 931
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v0, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 937
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p1, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    move-object v4, p1

    .line 938
    .restart local v4    # "image":Ljava/lang/Object;
    goto :goto_0

    .line 932
    .end local v4    # "image":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 933
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    throw v2

    .line 934
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/Exception;
    throw v2
.end method


# virtual methods
.method delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 989
    if-nez p1, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 991
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->deleteDrawableFromMemCache(Ljava/lang/String;)V

    .line 992
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    .local v1, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 995
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method load(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 969
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 985
    :cond_0
    :goto_0
    return-object v0

    .line 970
    :cond_1
    const/4 v0, 0x0

    .line 972
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 973
    if-nez v0, :cond_0

    .line 974
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 977
    invoke-direct {p0, p1, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 979
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 981
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 942
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 943
    :cond_0
    const/4 v2, 0x0

    .line 965
    :goto_0
    return-object v2

    .line 945
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 951
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "banner_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "fileName":Ljava/lang/String;
    move-object v4, p3

    .line 952
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 953
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 955
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 957
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 958
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 959
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 946
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 948
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 949
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 960
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 961
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
