.class public Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final AUTHORITY_INCLUDE_DELETE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters/include_deleted"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DELETED:Ljava/lang/String; = "deleted"

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_ORDER:Ljava/lang/String; = "filter_order"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

.field private static final FILTER_PROVIDER_PACKAGE_VER1:Ljava/lang/String; = "com.sec.android.filter"

.field private static final FILTER_PROVIDER_PACKAGE_VER2:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final FRONT_DELETED:Ljava/lang/String; = "front_deleted"

.field private static final FRONT_FILTER_ORDER:Ljava/lang/String; = "front_filter_order"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_CATEGORY:I = 0xf

.field private static final INDEX_COUNTRY:I = 0xd

.field private static final INDEX_DELETED:I = 0x10

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_ORDER:I = 0x11

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_FRONT_DELETED:I = 0x13

.field private static final INDEX_FRONT_FILTER_ORDER:I = 0x12

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_RES_NAME:I = 0xe

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final RES_NAME:Ljava/lang/String; = "resource_name"

.field private static final TAG:Ljava/lang/String; = "ExternalFilterLoader"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mBackExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mDualExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

.field private static mFilterLoaded:Z

.field private static mFrontExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mNeedUpdateLocale:Z


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mFilterDBObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters/include_deleted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    .line 93
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    .line 95
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "front_filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "front_deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    .line 102
    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    .line 103
    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "ExternalFilterLoader"

    const-string v1, "create ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    .line 146
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    return p0
.end method

.method public static getDualFilterHandler(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDualFilterHeight(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getDualFilterPosx(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 157
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosx()I

    move-result v0

    return v0
.end method

.method public static getDualFilterPosy(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 161
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosy()I

    move-result v0

    return v0
.end method

.method public static getDualFilterWidth(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 165
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getWidth()I

    move-result v0

    return v0
.end method

.method public static instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .locals 2
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 190
    const-string v0, "Create ExternalFilterLoader"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 196
    :cond_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 197
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isEffectCategorySupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VERSION_FILTER_PROVIDER"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalEffect(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 169
    const/16 v0, 0x1f40

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterLoaded()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    return v0
.end method

.method public static isValidExternalId(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 177
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    add-int/lit16 v0, p0, -0x1f40

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit16 v0, p0, -0x1f40

    if-ltz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    monitor-exit v1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 202
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "ExternalFilterLoader"

    const-string v1, "clear ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalEffectCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 222
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 226
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    .line 241
    :goto_0
    return v0

    .line 228
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 232
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 234
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 238
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 239
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 241
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    .line 259
    :goto_0
    return-object v0

    .line 257
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_2
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalEffectsId(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 265
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 267
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v3

    .line 286
    :goto_0
    return v1

    .line 272
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    .line 274
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 275
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 277
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    goto :goto_0

    .line 280
    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 281
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 283
    :cond_5
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 293
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 295
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 298
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 314
    :goto_0
    return-object v1

    .line 300
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 302
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 303
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 305
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 308
    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 309
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 311
    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalEffectsTitle(I)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 320
    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 322
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 325
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 327
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 328
    .restart local v1    # "title":Ljava/lang/String;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 330
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 332
    :cond_3
    :try_start_5
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 333
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 334
    .restart local v1    # "title":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 335
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 336
    :cond_4
    :try_start_7
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_8
    monitor-exit v4

    goto :goto_0

    .line 338
    :cond_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 341
    :cond_6
    :try_start_9
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 342
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1    # "title":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 344
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 345
    :cond_7
    :try_start_b
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :try_start_c
    monitor-exit v4

    goto/16 :goto_0

    .line 347
    :cond_8
    monitor-exit v4

    move-object v1, v3

    goto/16 :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public getExternalFilterCategory(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x2

    .line 356
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 358
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getCategory()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v3

    .line 373
    :goto_0
    return v1

    .line 363
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    .line 365
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getCategory()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 368
    :cond_3
    :try_start_4
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 371
    :cond_4
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 379
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "fullName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 390
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 411
    :goto_0
    return-object v1

    .line 397
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 399
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 400
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 402
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 405
    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 406
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 408
    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 417
    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 419
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 420
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 422
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    monitor-exit v4

    .line 441
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 425
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 427
    :cond_2
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 428
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 443
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 431
    :cond_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 434
    :cond_4
    :try_start_5
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 435
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    .line 436
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    :try_start_6
    monitor-exit v4

    goto :goto_0

    .line 438
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v3

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 449
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 452
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 468
    :goto_0
    return-object v1

    .line 454
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 456
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 457
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 459
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 462
    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 463
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 465
    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterType(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 474
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 476
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    .line 495
    :goto_0
    return-object v1

    .line 481
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 483
    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 486
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 489
    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 490
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 492
    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "ex":Ljava/lang/Exception;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterVendorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 501
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 505
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 518
    :goto_0
    return-object v0

    .line 507
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 509
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 510
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 512
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 515
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 516
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 518
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalFilterVersion(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, -0x1

    .line 524
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    .line 541
    :goto_0
    return v0

    .line 530
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 532
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 535
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 538
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 541
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageRemoved()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 547
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 548
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 549
    add-int/lit16 v6, v2, 0x1f40

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "packageName":Ljava/lang/String;
    add-int/lit16 v6, v2, 0x1f40

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "filterName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 548
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ExternalFilterLoader"

    const-string v7, "Some ExternalFilter package has been removed"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    .line 560
    const/4 v5, 0x1

    .line 563
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "filterName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string v0, "com.sec.android.filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    .line 570
    :cond_0
    const-string v0, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.aillis.filter.libdelicious.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.b612.filter.libriddle.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libgold.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libsweet.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.libnostalgia.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.librose.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libmonogram.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libeveryday.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 577
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    if-nez p1, :cond_0

    .line 597
    :goto_0
    return v2

    .line 586
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    move v2, v3

    .line 587
    goto :goto_0

    .line 590
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 592
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 597
    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalFilter package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has been removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadExternalFilters()Z
    .locals 54

    .prologue
    .line 601
    const-string v3, "ExternalFilterLoader"

    const-string v4, "load ExternalFilterLoader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    const/4 v3, 0x0

    .line 755
    :goto_0
    return v3

    .line 605
    :cond_0
    const/16 v42, 0x0

    .line 607
    .local v42, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 608
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    .line 612
    .local v5, "projection":[Ljava/lang/String;
    :goto_1
    sget-object v53, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v53

    .line 613
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 617
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 623
    :goto_2
    const/16 v44, 0x0

    .line 624
    .local v44, "filterCount":I
    const/16 v38, 0x0

    .line 625
    .local v38, "backFilterCount":I
    const/16 v45, 0x0

    .line 626
    .local v45, "frontFilterCount":I
    if-eqz v42, :cond_10

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    .line 627
    :cond_2
    :goto_3
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 630
    .local v7, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "effectName":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v3, "Unnamed filter"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 634
    const/4 v3, 0x2

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "filterName":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v3, "Unnamed filter"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 638
    const/4 v3, 0x3

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 640
    .local v12, "version":I
    const/4 v3, 0x4

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "vendor":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v3, "Unknown vendor"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 644
    const/4 v3, 0x5

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 645
    .local v20, "filter_type":Ljava/lang/String;
    if-eqz v20, :cond_2

    const-string v3, "Unknown FilterType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    const/16 v3, 0xc

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 649
    .local v19, "packageName":Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    const/16 v3, 0xd

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 654
    .local v41, "country":Ljava/lang/String;
    if-eqz v41, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 658
    .local v52, "ver":I
    const/4 v3, 0x1

    move/from16 v0, v52

    if-ne v0, v3, :cond_b

    .line 659
    const-string v51, "com.sec.android.filter"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    .local v51, "resPkgName":Ljava/lang/String;
    :goto_4
    const/16 v3, 0xe

    :try_start_2
    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 668
    .local v50, "resName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    move-object/from16 v0, v51

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v37

    .line 669
    .local v37, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v48

    .line 671
    .local v48, "res":Landroid/content/res/Resources;
    const-string v3, "string"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v49

    .line 672
    .local v49, "resId":I
    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 673
    .local v13, "title":Ljava/lang/String;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    .end local v37    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v48    # "res":Landroid/content/res/Resources;
    .end local v49    # "resId":I
    .end local v50    # "resName":Ljava/lang/String;
    .end local v51    # "resPkgName":Ljava/lang/String;
    .end local v52    # "ver":I
    :goto_5
    if-eqz v13, :cond_2

    :try_start_3
    const-string v3, "Unknown title"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 685
    const/4 v3, 0x7

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 686
    .local v14, "posx":I
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 687
    .local v15, "posy":I
    const/16 v3, 0x9

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 688
    .local v16, "width":I
    const/16 v3, 0xa

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 689
    .local v17, "height":I
    const/16 v21, 0x0

    .line 690
    .local v21, "category":I
    const/16 v47, 0x0

    .line 691
    .local v47, "front_order":I
    const/16 v40, 0x0

    .line 692
    .local v40, "back_order":I
    const/16 v46, 0x0

    .line 693
    .local v46, "front_deleted":I
    const/16 v39, 0x0

    .line 694
    .local v39, "back_deleted":I
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 695
    const/16 v3, 0xf

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 696
    const/16 v3, 0x12

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 697
    const/16 v3, 0x11

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 698
    const/16 v3, 0x13

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 699
    const/16 v3, 0x10

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 702
    :cond_3
    const/16 v3, 0xb

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 703
    .local v18, "handler":Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 706
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 707
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], category["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v44

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    if-eqz v21, :cond_4

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_5

    .line 716
    :cond_4
    if-nez v39, :cond_5

    .line 717
    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v38

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 719
    .local v6, "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v38, v38, 0x1

    .line 723
    .end local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_7

    .line 724
    :cond_6
    if-nez v46, :cond_7

    .line 725
    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v45

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    .restart local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    add-int/lit8 v45, v45, 0x1

    .line 740
    .end local v6    # "mExtEffectItem":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :cond_7
    :goto_6
    add-int/lit8 v44, v44, 0x1

    .line 741
    goto/16 :goto_3

    .line 610
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v9    # "vendor":Ljava/lang/String;
    .end local v10    # "effectName":Ljava/lang/String;
    .end local v11    # "filterName":Ljava/lang/String;
    .end local v12    # "version":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "posx":I
    .end local v15    # "posy":I
    .end local v16    # "width":I
    .end local v17    # "height":I
    .end local v18    # "handler":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "filter_type":Ljava/lang/String;
    .end local v21    # "category":I
    .end local v38    # "backFilterCount":I
    .end local v39    # "back_deleted":I
    .end local v40    # "back_order":I
    .end local v41    # "country":Ljava/lang/String;
    .end local v44    # "filterCount":I
    .end local v45    # "frontFilterCount":I
    .end local v46    # "front_deleted":I
    .end local v47    # "front_order":I
    :cond_8
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    .restart local v5    # "projection":[Ljava/lang/String;
    goto/16 :goto_1

    .line 619
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "front_filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_2

    .line 621
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_2

    .line 660
    .restart local v7    # "id":I
    .restart local v9    # "vendor":Ljava/lang/String;
    .restart local v10    # "effectName":Ljava/lang/String;
    .restart local v11    # "filterName":Ljava/lang/String;
    .restart local v12    # "version":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "filter_type":Ljava/lang/String;
    .restart local v38    # "backFilterCount":I
    .restart local v41    # "country":Ljava/lang/String;
    .restart local v44    # "filterCount":I
    .restart local v45    # "frontFilterCount":I
    .restart local v52    # "ver":I
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, v52

    if-ne v0, v3, :cond_c

    .line 661
    const-string v51, "com.samsung.android.provider.filterprovider"

    .restart local v51    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 663
    .end local v51    # "resPkgName":Ljava/lang/String;
    :cond_c
    move-object/from16 v51, v19

    .restart local v51    # "resPkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 674
    :catch_0
    move-exception v43

    .line 675
    .local v43, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x6

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_5

    .line 678
    .end local v13    # "title":Ljava/lang/String;
    .end local v43    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v51    # "resPkgName":Ljava/lang/String;
    .end local v52    # "ver":I
    :cond_d
    const/4 v3, 0x6

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/String;
    goto/16 :goto_5

    .line 732
    .restart local v14    # "posx":I
    .restart local v15    # "posy":I
    .restart local v16    # "width":I
    .restart local v17    # "height":I
    .restart local v18    # "handler":Ljava/lang/String;
    .restart local v21    # "category":I
    .restart local v39    # "back_deleted":I
    .restart local v40    # "back_order":I
    .restart local v46    # "front_deleted":I
    .restart local v47    # "front_order":I
    :cond_e
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v22, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v44

    add-int/lit16 v0, v0, 0x1f40

    move/from16 v24, v0

    move/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v20

    invoke-direct/range {v22 .. v36}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 750
    .end local v7    # "id":I
    .end local v9    # "vendor":Ljava/lang/String;
    .end local v10    # "effectName":Ljava/lang/String;
    .end local v11    # "filterName":Ljava/lang/String;
    .end local v12    # "version":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "posx":I
    .end local v15    # "posy":I
    .end local v16    # "width":I
    .end local v17    # "height":I
    .end local v18    # "handler":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "filter_type":Ljava/lang/String;
    .end local v21    # "category":I
    .end local v38    # "backFilterCount":I
    .end local v39    # "back_deleted":I
    .end local v40    # "back_order":I
    .end local v41    # "country":Ljava/lang/String;
    .end local v44    # "filterCount":I
    .end local v45    # "frontFilterCount":I
    .end local v46    # "front_deleted":I
    .end local v47    # "front_order":I
    :catchall_0
    move-exception v3

    if-eqz v42, :cond_f

    .line 751
    :try_start_5
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 754
    :catchall_1
    move-exception v3

    monitor-exit v53
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 744
    .restart local v38    # "backFilterCount":I
    .restart local v44    # "filterCount":I
    .restart local v45    # "frontFilterCount":I
    :cond_10
    :try_start_6
    sget-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    if-eqz v3, :cond_11

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.filterprovider.LOCALE_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    .line 748
    :cond_11
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 750
    if-eqz v42, :cond_12

    .line 751
    :try_start_7
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_12
    monitor-exit v53
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 755
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 759
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public unRegisterObserver()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 768
    return-void
.end method
