.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/backup/BackupAgent;
    .param p2, "x1"    # Landroid/app/backup/BackupAgent$1;

    .prologue
    .line 827
    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 839
    .local v2, "ident":J
    new-instance v1, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 842
    .local v1, "output":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, v1, p3}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-interface {p5, p4, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 862
    :goto_0
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBackup ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    const-wide/16 v6, 0x0

    :try_start_3
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 860
    :goto_1
    throw v4

    .line 846
    :catch_1
    move-exception v0

    .line 847
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBackup ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 858
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 10
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "token"    # I
    .param p3, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 904
    .local v4, "ident":J
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 907
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v7, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v7, p1}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v6, v7}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 921
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 922
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 923
    .local v0, "buf":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 928
    .end local v0    # "buf":[B
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 930
    const-wide/16 v6, 0x0

    :try_start_2
    invoke-interface {p3, p2, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 935
    :goto_1
    return-void

    .line 924
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BackupServiceBinder"

    const-string v7, "Unable to finalize backup stream!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 909
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFullBackup ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 916
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v7}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 921
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 922
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 923
    .restart local v0    # "buf":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 928
    .end local v0    # "buf":[B
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 930
    const-wide/16 v8, 0x0

    :try_start_5
    invoke-interface {p3, p2, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 933
    :goto_3
    throw v6

    .line 911
    :catch_2
    move-exception v2

    .line 912
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFullBackup ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 924
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 925
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "BackupServiceBinder"

    const-string v8, "Unable to finalize backup stream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 931
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto/16 :goto_1

    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method public doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 940
    .local v2, "ident":J
    new-instance v1, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v1}, Landroid/app/backup/FullBackupDataOutput;-><init>()V

    .line 942
    .local v1, "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 944
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, v1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    :try_start_1
    invoke-virtual {v1}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v4

    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 959
    :goto_0
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFullBackup[M] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 952
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    :try_start_3
    invoke-virtual {v1}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 957
    :goto_1
    throw v4

    .line 948
    :catch_1
    move-exception v0

    .line 949
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFullBackup[M] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 955
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 872
    .local v2, "ident":J
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 874
    .local v1, "input":Landroid/app/backup/BackupDataInput;
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, v1, p2, p3}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 885
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 887
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-interface {p5, p4, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 892
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestore ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 883
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 885
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 887
    const-wide/16 v6, 0x0

    :try_start_3
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 890
    :goto_1
    throw v4

    .line 878
    :catch_1
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestore ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 888
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 17
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 967
    .local v14, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v3}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 975
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    const-wide/16 v4, 0x0

    :try_start_1
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRestoreFile ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 973
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 975
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    const-wide/16 v4, 0x0

    :try_start_3
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 980
    :goto_1
    throw v3

    .line 978
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 988
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v1}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 996
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1003
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRestoreFinished ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    .line 996
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    const-wide/16 v4, 0x0

    :try_start_3
    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1001
    :goto_1
    throw v1

    .line 999
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method

.method public getBackupDataSize()J
    .locals 24

    .prologue
    .line 1018
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1019
    .local v20, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    .line 1022
    .local v8, "contentSize":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v17

    .line 1023
    .local v17, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v16

    .line 1028
    .local v16, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1031
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    new-instance v21, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v19

    .line 1032
    .local v19, "rootDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/BackupAgent;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    .line 1033
    .local v18, "nobackupDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 1034
    .local v5, "cacheDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/backup/BackupAgent;->getCodeCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 1035
    .local v6, "codeCacheDir":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    new-instance v21, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 1038
    .local v15, "libDir":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 1041
    .local v11, "efDir":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1042
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1043
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1044
    if-eqz v15, :cond_0

    .line 1045
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v21

    if-nez v21, :cond_4

    .line 1051
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    # invokes: Landroid/app/backup/BackupAgent;->getDirectorySizeEx(Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J
    invoke-static {v0, v1, v2, v3}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J

    move-result-wide v8

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    # invokes: Landroid/app/backup/BackupAgent;->getDirectorySizeEx(Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J
    invoke-static {v0, v11, v1, v2}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J

    move-result-wide v22

    add-long v8, v8, v22

    .end local v5    # "cacheDir":Ljava/lang/String;
    .end local v6    # "codeCacheDir":Ljava/lang/String;
    .end local v11    # "efDir":Ljava/lang/String;
    .end local v15    # "libDir":Ljava/lang/String;
    .end local v18    # "nobackupDir":Ljava/lang/String;
    .end local v19    # "rootDir":Ljava/lang/String;
    :cond_2
    :goto_1
    move-wide/from16 v22, v8

    .line 1064
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_2
    return-wide v22

    .line 1024
    :catch_0
    move-exception v10

    .line 1025
    .local v10, "e":Ljava/lang/Exception;
    :goto_3
    const-wide/16 v22, -0x1

    goto :goto_2

    .line 1035
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "cacheDir":Ljava/lang/String;
    .restart local v6    # "codeCacheDir":Ljava/lang/String;
    .restart local v16    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v18    # "nobackupDir":Ljava/lang/String;
    .restart local v19    # "rootDir":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1054
    .restart local v11    # "efDir":Ljava/lang/String;
    .restart local v15    # "libDir":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1055
    .local v7, "domain":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1056
    .local v14, "includeFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    # invokes: Landroid/app/backup/BackupAgent;->getDirectorySizeEx(Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J
    invoke-static {v0, v14, v1, v2}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    add-long v8, v8, v22

    .line 1057
    goto :goto_4

    .line 1060
    .end local v5    # "cacheDir":Ljava/lang/String;
    .end local v6    # "codeCacheDir":Ljava/lang/String;
    .end local v7    # "domain":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v11    # "efDir":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "includeFile":Ljava/lang/String;
    .end local v15    # "libDir":Ljava/lang/String;
    .end local v18    # "nobackupDir":Ljava/lang/String;
    .end local v19    # "rootDir":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1061
    .local v10, "e":Ljava/io/IOException;
    const-string v21, "BackupServiceBinder"

    const-string v22, "Unable to get size of app data : "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1024
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catch_2
    move-exception v10

    goto :goto_3
.end method
