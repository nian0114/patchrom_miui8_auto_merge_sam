.class public abstract Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
.super Ljava/lang/Object;
.source "ContextProviderCreator.java"


# static fields
.field private static sAPPowerObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

.field private static sContext:Landroid/content/Context;

.field private static final sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;

.field private static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p4, "version"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setLooper(Landroid/os/Looper;)V

    invoke-static {p3}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setAPPowerObservable(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-static {p4}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setVersion(I)V

    return-void
.end method

.method private create(Ljava/lang/String;Z)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSubCollection"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/creator/IListObjectCreator;->getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/creator/IListObjectCreator;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    return-object v0
.end method

.method protected static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static final declared-synchronized getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected static getVersion()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sVersion:I

    return v0
.end method

.method protected static final removeObj(Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setAPPowerObservable(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p0, "sAPPowerObservable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "sContext"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static setLooper(Landroid/os/Looper;)V
    .locals 0
    .param p0, "sLooper"    # Landroid/os/Looper;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public static setVersion(I)V
    .locals 0
    .param p0, "version"    # I

    .prologue
    sput p0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->sVersion:I

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final varargs create(Ljava/lang/String;Z[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSubCollection"    # Z
    .param p3, "property"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-gtz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/samsung/android/contextaware/creator/IListObjectCreator;->getObjectForSubCollection([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/samsung/android/contextaware/creator/IListObjectCreator;->getObject([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "property"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "exist":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;
.end method

.method public final removeContextObj(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/creator/IListObjectCreator;->removeObject(Ljava/lang/String;)V

    goto :goto_0
.end method
