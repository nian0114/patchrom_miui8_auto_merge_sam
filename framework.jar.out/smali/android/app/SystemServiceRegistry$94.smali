.class final Landroid/app/SystemServiceRegistry$94;
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
        "Lcom/samsung/android/mdnie/MdnieManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/mdnie/MdnieManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const-string v2, "mDNIe"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mdnie/IMdnieManager;

    move-result-object v1

    .local v1, "service":Lcom/samsung/android/mdnie/IMdnieManager;
    new-instance v2, Lcom/samsung/android/mdnie/MdnieManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/mdnie/MdnieManager;-><init>(Lcom/samsung/android/mdnie/IMdnieManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$94;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/mdnie/MdnieManager;

    move-result-object v0

    return-object v0
.end method
