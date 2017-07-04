.class final Landroid/app/SystemServiceRegistry$93;
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
        "Lcom/samsung/media/fmradio/FMPlayer;",
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
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/media/fmradio/FMPlayer;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayer;

    invoke-direct {v0, p1}, Lcom/samsung/media/fmradio/FMPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$93;->createService(Landroid/app/ContextImpl;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v0

    return-object v0
.end method
