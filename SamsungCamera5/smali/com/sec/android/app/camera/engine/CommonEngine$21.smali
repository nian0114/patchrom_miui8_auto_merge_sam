.class Lcom/sec/android/app/camera/engine/CommonEngine$21;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->dbUpdateByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 7815
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 7819
    :try_start_0
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 7820
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 7821
    .local v11, "values":Landroid/content/ContentValues;
    if-eqz v11, :cond_7

    .line 7822
    const-string v12, "_data"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7824
    .local v1, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7825
    .local v7, "mFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 7826
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsBurstCaptureSavingCompleted:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 7827
    const-string v12, "CommonEngine"

    const-string v13, "lastImage is not exists phisically yet"

    invoke-static {v12, v13}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7877
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v7    # "mFile":Ljava/io/File;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 7830
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v7    # "mFile":Ljava/io/File;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsBurstCaptureSavingCompleted:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 7831
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v12}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 7832
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v12}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    .line 7836
    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 7837
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    iget-object v13, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, v13, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ContentValues;

    invoke-virtual {v12, v13}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 7838
    .local v6, "imageValues":[Landroid/content/ContentValues;
    const-string v12, "CommonEngine"

    const-string v13, "db insert E"

    invoke-static {v12, v13}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7839
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, v13, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v13}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v13

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstNumBulkInsert:I
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4402(Lcom/sec/android/app/camera/engine/CommonEngine;I)I

    .line 7840
    const-string v12, "CommonEngine"

    const-string v13, "db insert X"

    invoke-static {v12, v13}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    const-string v12, "CommonEngine"

    const-string v13, "SEF insert E"

    invoke-static {v12, v13}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7844
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v4

    .line 7845
    .local v4, "idx":I
    const-string v12, "datetaken"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 7846
    .local v9, "tempDataTaken":Ljava/lang/Long;
    const-wide/16 v2, 0x0

    .line 7847
    .local v2, "dateTaken":J
    if-eqz v9, :cond_2

    .line 7848
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 7850
    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->insertBurstInfoToSEF(Ljava/lang/String;J)V
    invoke-static {v12, v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4500(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;J)V

    move v5, v4

    .line 7851
    .end local v4    # "idx":I
    .local v5, "idx":I
    :goto_1
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    if-lez v5, :cond_5

    .line 7852
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 7853
    .local v10, "v":Landroid/content/ContentValues;
    if-eqz v10, :cond_3

    .line 7854
    const-string v12, "_data"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7855
    .local v0, "burstFile":Ljava/lang/String;
    const-string v12, "datetaken"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 7856
    if-eqz v9, :cond_4

    .line 7857
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 7861
    :goto_2
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->insertBurstInfoToSEF(Ljava/lang/String;J)V
    invoke-static {v12, v0, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4500(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;J)V

    .end local v0    # "burstFile":Ljava/lang/String;
    :cond_3
    move v5, v4

    .line 7863
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    goto :goto_1

    .line 7859
    .end local v5    # "idx":I
    .restart local v0    # "burstFile":Ljava/lang/String;
    .restart local v4    # "idx":I
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 7864
    .end local v0    # "burstFile":Ljava/lang/String;
    .end local v10    # "v":Landroid/content/ContentValues;
    :cond_5
    const-string v12, "CommonEngine"

    const-string v13, "SEF insert X"

    invoke-static {v12, v13}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7866
    .end local v2    # "dateTaken":J
    .end local v4    # "idx":I
    .end local v6    # "imageValues":[Landroid/content/ContentValues;
    .end local v9    # "tempDataTaken":Ljava/lang/Long;
    :cond_6
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->lastImageUpdate(Landroid/content/ContentValues;)V
    invoke-static {v12, v11}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4600(Lcom/sec/android/app/camera/engine/CommonEngine;Landroid/content/ContentValues;)V

    .line 7868
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v7    # "mFile":Ljava/io/File;
    :cond_7
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->removeAllElements()V

    .line 7872
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_3
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBupdateThread:Ljava/lang/Thread;
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4702(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7873
    :catch_0
    move-exception v8

    .line 7874
    .local v8, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v12, "CommonEngine"

    const-string v13, "Not enough space in database"

    invoke-static {v12, v13}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$21;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v13, 0x7f080176

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7870
    .end local v8    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :cond_8
    :try_start_1
    const-string v12, "CommonEngine"

    const-string v13, "BurstDBupdateStack is Empty"

    invoke-static {v12, v13}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
