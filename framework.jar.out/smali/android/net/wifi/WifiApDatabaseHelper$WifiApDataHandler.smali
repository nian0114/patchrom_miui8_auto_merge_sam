.class Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;
.super Landroid/os/Handler;
.source "WifiApDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApDataHandler"
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Landroid/net/wifi/WifiApDatabaseHelper;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApDatabaseHelper;)V
    .locals 1

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    .line 1362
    return-void
.end method


# virtual methods
.method getRunning()Z
    .locals 1

    .prologue
    .line 1379
    iget-boolean v0, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 1385
    const-string v4, "WifiApDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApDataHandler handleMessage size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;
    invoke-static {v6}, Landroid/net/wifi/WifiApDatabaseHelper;->access$200(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "flag":Z
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;
    invoke-static {v4}, Landroid/net/wifi/WifiApDatabaseHelper;->access$200(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1388
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;
    invoke-static {v4}, Landroid/net/wifi/WifiApDatabaseHelper;->access$200(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1389
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1391
    .local v2, "mac":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiApDatabaseHelper;->skipGetUsageData(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1392
    const/4 v0, 0x1

    .line 1393
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiApDatabaseHelper;->getStaUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1394
    .local v3, "usage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1395
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v4, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->modifyUsageData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1398
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "usage":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 1399
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v7, v4, v5}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1403
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 1401
    :cond_3
    iput-boolean v7, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    goto :goto_1
.end method

.method pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1373
    const-string v0, "WifiApDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDataHandler pause, isRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iput-boolean v3, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    .line 1375
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->removeMessages(I)V

    .line 1376
    return-void
.end method

.method resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1365
    const-string v0, "WifiApDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDataHandler resume, isRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->isRunning:Z

    .line 1367
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->sendEmptyMessage(I)Z

    .line 1370
    :cond_0
    return-void
.end method
