.class Lcom/android/providers/media/FaceScanner$__ompClass0;
.super Lcom/samsung/javaomp/runtime/__OMPWorkItem;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "__ompClass0"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/FaceScanner;


# direct methods
.method constructor <init>(Lcom/android/providers/media/FaceScanner;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;-><init>()V

    return-void
.end method


# virtual methods
.method public __doWork(I)V
    .locals 9
    .param p1, "__ompThreadId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 873
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 875
    sget v5, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v5, v7, v7}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    .line 881
    .local v3, "fr_scan":I
    const/4 v4, 0x0

    .line 884
    .local v4, "i":I
    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPLoop;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPLoop;-><init>()V

    .line 885
    .local v0, "__loopData0":Lcom/samsung/javaomp/runtime/__OMPLoop;
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    .line 886
    # getter for: Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/providers/media/FaceScanner;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    .line 887
    const-wide/16 v6, 0x1

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    .line 888
    const-wide/16 v6, 0xa

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    .line 889
    sget-object v5, Lcom/samsung/javaomp/runtime/OMPSched;->DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v5, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    .line 890
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__workshareStart(Lcom/samsung/javaomp/runtime/__OMPLoop;)V

    .line 891
    :cond_0
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__loopNext(Lcom/samsung/javaomp/runtime/__OMPLoop;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 892
    iget-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    long-to-int v4, v6

    :goto_0
    iget-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    long-to-int v5, v6

    if-ge v4, v5, :cond_1

    .line 897
    sget-boolean v5, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v5, :cond_4

    .line 898
    const-string v5, "FaceScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "face 1 ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) break "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_1
    sget-boolean v5, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v5, :cond_0

    .line 921
    const-string v5, "FaceScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "face 2 ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) break "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_2
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doBarrier()V

    .line 932
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v5, v8}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    .line 933
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v5, v8}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    .line 934
    if-eqz v3, :cond_3

    .line 935
    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 940
    :cond_3
    return-void

    .line 901
    :cond_4
    # getter for: Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/providers/media/FaceScanner;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FileInfor;

    .line 902
    .local v2, "fileInfor":Lcom/android/providers/media/FaceScanner$FileInfor;
    # getter for: Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/providers/media/FaceScanner;->access$100()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 903
    :try_start_0
    iget v5, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    if-eqz v5, :cond_5

    .line 904
    monitor-exit v6

    .line 892
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    :cond_5
    const/4 v5, 0x1

    iput v5, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 907
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    const/16 v5, 0x190

    invoke-static {v3, v5}, Lcom/android/providers/media/NativeApi;->setFaceThumbnaislSize(II)V

    .line 909
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    iget-object v7, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mData:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/providers/media/FaceScanner;->scanFile(IILjava/lang/String;)I

    move-result v1

    .line 910
    .local v1, "face_count":I
    if-lez v1, :cond_6

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseDCM()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 911
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    .line 913
    :cond_6
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    .line 914
    const/4 v5, 0x2

    iput v5, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 916
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-static {}, Lcom/android/providers/media/FaceValue;->getSleepTime()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->sleep(I)V

    goto :goto_1

    .line 907
    .end local v1    # "face_count":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
