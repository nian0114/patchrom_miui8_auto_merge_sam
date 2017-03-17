.class final Landroid/app/SystemServiceRegistry$28;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/samsung/cpp/CPPositioningManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/cpp/CPPositioningManager;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 485
    const-string v4, "cpp_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 486
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 488
    .local v1, "cppManager":Lcom/samsung/cpp/CPPositioningManager;
    :try_start_0
    new-instance v2, Lcom/samsung/cpp/CPPositioningManager;

    invoke-static {v0}, Lcom/samsung/cpp/ICPPositioningService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPositioningService;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/cpp/CPPositioningManager;-><init>(Lcom/samsung/cpp/ICPPositioningService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cppManager":Lcom/samsung/cpp/CPPositioningManager;
    .local v2, "cppManager":Lcom/samsung/cpp/CPPositioningManager;
    move-object v1, v2

    .line 493
    .end local v2    # "cppManager":Lcom/samsung/cpp/CPPositioningManager;
    .restart local v1    # "cppManager":Lcom/samsung/cpp/CPPositioningManager;
    :goto_0
    return-object v2

    .line 489
    :catch_0
    move-exception v3

    .line 490
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServiceRegistry"

    const-string/jumbo v5, "registerService(Context.CP_POSITIONING_SERVICE) failed. error or not support."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$28;->createService(Landroid/app/ContextImpl;)Lcom/samsung/cpp/CPPositioningManager;

    move-result-object v0

    return-object v0
.end method
