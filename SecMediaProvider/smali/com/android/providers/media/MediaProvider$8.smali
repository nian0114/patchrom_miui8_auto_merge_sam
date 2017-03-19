.class Lcom/android/providers/media/MediaProvider$8;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 1781
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 1782
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    monitor-enter v7

    .line 1783
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/media/MediaThumbRequest;

    # setter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v8, v6}, Lcom/android/providers/media/MediaProvider;->access$2302(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;

    .line 1784
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1786
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Have message but no request?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1784
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1789
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1790
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v5, "origFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_5

    .line 1792
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/providers/media/MediaThumbRequest;->execute()V

    .line 1794
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 1795
    :try_start_3
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/media/MediaThumbRequest;

    .line 1796
    .local v4, "mtq":Lcom/android/providers/media/MediaThumbRequest;
    iget-wide v8, v4, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    iget-wide v10, v6, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    iget-boolean v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v8}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v6, v8, :cond_2

    iget-wide v8, v4, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    cmp-long v6, v8, v12

    if-nez v6, :cond_2

    iget-object v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v6, v8, :cond_2

    .line 1800
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    iget-wide v8, v6, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    iput-wide v8, v4, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    goto :goto_1

    .line 1803
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mtq":Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 1811
    .end local v5    # "origFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1812
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 1829
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    monitor-enter v7

    .line 1830
    :try_start_6
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v8, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1831
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 1803
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "origFile":Ljava/io/File;
    :cond_3
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1829
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "origFile":Ljava/io/File;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    monitor-enter v7

    .line 1830
    :try_start_8
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v8, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1831
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 1806
    .restart local v5    # "origFile":Ljava/io/File;
    :cond_5
    :try_start_9
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    monitor-enter v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1807
    :try_start_a
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "original file hasn\'t been stored yet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    iget-object v9, v9, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    monitor-exit v7

    goto :goto_2

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1813
    .end local v5    # "origFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 1816
    .local v2, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_c
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1829
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    monitor-enter v7

    .line 1830
    :try_start_d
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v8, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1831
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v6

    .line 1817
    .end local v2    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1827
    .local v1, "err":Ljava/lang/OutOfMemoryError;
    :try_start_e
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1829
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    monitor-enter v7

    .line 1830
    :try_start_f
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v8, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1831
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v7

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v6

    .line 1829
    .end local v1    # "err":Ljava/lang/OutOfMemoryError;
    :catchall_7
    move-exception v6

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    monitor-enter v7

    .line 1830
    :try_start_10
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v8}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v8, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1831
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v8}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v6

    :catchall_8
    move-exception v6

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v6

    .line 1835
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1837
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2400(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v7

    monitor-enter v7

    .line 1838
    :try_start_12
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2400(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    .line 1839
    .local v0, "d":Lcom/android/providers/media/MediaProvider$ThumbData;
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1841
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1842
    .restart local v5    # "origFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_7

    .line 1843
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # invokes: Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v6, v0}, Lcom/android/providers/media/MediaProvider;->access$2500(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1846
    :cond_7
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 1847
    :try_start_13
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v8, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1848
    monitor-exit v7

    goto/16 :goto_0

    :catchall_9
    move-exception v6

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v6

    .line 1839
    .end local v0    # "d":Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v5    # "origFile":Ljava/io/File;
    :catchall_a
    move-exception v6

    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    throw v6
.end method
