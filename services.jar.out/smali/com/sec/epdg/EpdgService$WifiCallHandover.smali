.class Lcom/sec/epdg/EpdgService$WifiCallHandover;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallHandover"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mDelay:I

.field mFeature:Ljava/lang/String;

.field mIntent:Landroid/app/PendingIntent;

.field mIsL2W:Z

.field mNetworkType:I

.field mRetryCount:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 3
    .param p2, "isL2W"    # Z
    .param p3, "retrycount"    # I
    .param p4, "networkType"    # I
    .param p5, "feature"    # Ljava/lang/String;
    .param p6, "binder"    # Landroid/os/IBinder;
    .param p7, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3737
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3728
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIsL2W:Z

    .line 3729
    iput v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mNetworkType:I

    .line 3730
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mFeature:Ljava/lang/String;

    .line 3731
    iput-object v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mBinder:Landroid/os/IBinder;

    .line 3732
    iput-object v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIntent:Landroid/app/PendingIntent;

    .line 3733
    iput v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    .line 3734
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mDelay:I

    .line 3738
    iput-boolean p2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIsL2W:Z

    .line 3739
    iput p4, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mNetworkType:I

    .line 3740
    iput-object p5, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mFeature:Ljava/lang/String;

    .line 3741
    iput-object p6, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mBinder:Landroid/os/IBinder;

    .line 3742
    iput-object p7, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIntent:Landroid/app/PendingIntent;

    .line 3743
    iput p3, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    .line 3744
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3748
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiCallHandover value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIsL2W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRetryCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3751
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIsL2W:Z

    if-eqz v0, :cond_1

    .line 3752
    const/4 v0, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 3754
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1400()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->this$0:Lcom/sec/epdg/EpdgService;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIsL2W:Z

    iget v3, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mRetryCount:I

    iget v4, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mNetworkType:I

    iget-object v5, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mFeature:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mBinder:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    iget v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mDelay:I

    int-to-long v2, v1

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3765
    :goto_0
    return-void

    .line 3757
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->this$0:Lcom/sec/epdg/EpdgService;

    iget v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mNetworkType:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mFeature:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgService;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3762
    :catch_0
    move-exception v8

    .line 3763
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not WifiCallHandover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3760
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->this$0:Lcom/sec/epdg/EpdgService;

    iget v1, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mNetworkType:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mFeature:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService$WifiCallHandover;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
