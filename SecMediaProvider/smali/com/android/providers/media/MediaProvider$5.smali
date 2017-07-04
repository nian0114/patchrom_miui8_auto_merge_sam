.class Lcom/android/providers/media/MediaProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1273
    const-string v4, "com.samsung.get_address_poi"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1275
    :try_start_0
    const-string v4, "currentlocationaddress"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1276
    .local v0, "address":[Landroid/os/Parcelable;
    const-string v4, "currentlocation"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1277
    .local v2, "location":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    array-length v4, v0

    array-length v5, v2

    if-ne v4, v5, :cond_0

    .line 1278
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Call UpdateAddressThread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v3, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/android/providers/media/MediaProvider$UpdateAddressThread;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;[Landroid/os/Parcelable;[Landroid/os/Parcelable;)V

    .line 1281
    .local v3, "th":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    .end local v0    # "address":[Landroid/os/Parcelable;
    .end local v2    # "location":[Landroid/os/Parcelable;
    .end local v3    # "th":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v1

    .line 1284
    .local v1, "e":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RuntimeException in mGetPoiReceiver"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
