.class Lcom/android/server/location/GpsLocationProvider_samsung$3;
.super Landroid/location/IExerciseLocationProvider$Stub;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Landroid/location/IExerciseLocationProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/location/IExerciseLocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1920
    if-nez p1, :cond_0

    .line 1921
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "listener is null in addExerciseLocationListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1924
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1925
    :try_start_0
    invoke-interface {p1}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1926
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1927
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1928
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;

    .line 1929
    .local v4, "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    iget-object v5, v4, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v5}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1931
    monitor-exit v6

    .line 1939
    .end local v4    # "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :goto_1
    return-void

    .line 1927
    .restart local v4    # "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1935
    .end local v4    # "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_2
    new-instance v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {v2, v5, p1}, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;Landroid/location/IExerciseLocationListener;)V

    .line 1936
    .local v2, "l":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1937
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    monitor-exit v6

    goto :goto_1

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/location/IExerciseLocationListener;

    .prologue
    .line 1943
    if-nez p1, :cond_0

    .line 1944
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "listener is null in addExerciseLocationListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1947
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1948
    :try_start_0
    invoke-interface {p1}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1949
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 1950
    .local v2, "l":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1951
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 1952
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;

    .line 1953
    .local v4, "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    iget-object v5, v4, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v5}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1954
    move-object v2, v4

    .line 1951
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1958
    .end local v4    # "test":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_2
    if-eqz v2, :cond_3

    .line 1959
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1960
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1963
    :cond_3
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1965
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-virtual {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->removeExerciseLocation()V

    .line 1967
    :cond_4
    monitor-exit v6

    .line 1968
    return-void

    .line 1967
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
