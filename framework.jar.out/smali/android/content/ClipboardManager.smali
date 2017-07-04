.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field static final MSG_REPORT_PRIMARY_CLIP_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ClipboardManager"

.field private static sService:Landroid/content/IClipboard;

.field private static sServiceEx:Landroid/sec/clipboard/IClipboardService;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    .line 95
    new-instance v0, Landroid/content/ClipboardManager$2;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$2;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/ClipboardManager;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 123
    sget-object v2, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    .line 129
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 127
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    .line 129
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceEx()Landroid/sec/clipboard/IClipboardService;
    .locals 2

    .prologue
    .line 136
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 143
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 140
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 143
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 5
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .prologue
    .line 300
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    monitor-exit v2

    .line 311
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 239
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 241
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v4

    if-gtz v4, :cond_0

    .line 242
    const-string v4, "ClipboardManager"

    const-string v5, "clipboardEx has no item."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-object v3

    .line 246
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->isSEContainerAndIsolated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x1

    .line 251
    .local v2, "formatid":I
    sget-object v4, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v4, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 252
    .local v0, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    if-nez v0, :cond_2

    .line 253
    const-string v4, "ClipboardManager"

    const-string v5, "getPrimaryClip, cbData is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "formatid":I
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "formatid":I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    .line 258
    .end local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "formatid":I
    :cond_3
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 272
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    .line 273
    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-object v1

    .line 276
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 332
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrimaryClip()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    .line 289
    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return v1

    .line 292
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hasText()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    .line 353
    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return v1

    .line 356
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .prologue
    .line 314
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 315
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v1, v3}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 324
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method reportPrimaryClipChanged()V
    .locals 5

    .prologue
    .line 366
    iget-object v4, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 367
    :try_start_0
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 368
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 369
    monitor-exit v4

    .line 377
    :cond_0
    return-void

    .line 371
    :cond_1
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 372
    .local v2, "listeners":[Ljava/lang/Object;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 375
    aget-object v3, v2, v1

    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 10
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    .line 168
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v7

    iget-object v8, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 171
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 174
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 175
    .local v4, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 176
    if-eqz v4, :cond_2

    .line 177
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    .line 178
    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getFormat()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v4, v9}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    .line 232
    .end local v4    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    :goto_0
    return-void

    .line 180
    .restart local v4    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    const-string v7, "ClipboardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ClipboardManager...sServiceEx : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", txt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v4    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 184
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 185
    .local v2, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 186
    if-eqz v2, :cond_4

    .line 187
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFormat()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v2, v9}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    goto :goto_0

    .line 190
    :cond_4
    const-string v7, "ClipboardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", html :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v2    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_5
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/uri-list"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 194
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 195
    .local v6, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 196
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 197
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_6

    .line 198
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    .line 199
    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getFormat()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v6, v9}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    goto/16 :goto_0

    .line 201
    :cond_6
    const-string v7, "ClipboardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uri :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_7
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/vnd.android.intent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 205
    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 206
    .local v3, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 207
    if-eqz v3, :cond_8

    .line 208
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setIntent(Landroid/content/Intent;)Z

    .line 209
    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->getFormat()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v3, v9}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    goto/16 :goto_0

    .line 211
    :cond_8
    const-string v7, "ClipboardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", intent :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v3    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget-object v8, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, "data":Ljava/lang/CharSequence;
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 217
    .restart local v4    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1

    if-eqz v4, :cond_1

    .line 218
    if-eqz v4, :cond_a

    .line 219
    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    .line 220
    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getFormat()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v4, v9}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    goto/16 :goto_0

    .line 222
    :cond_a
    const-string v7, "ClipboardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", txt :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 345
    return-void
.end method
