.class Lcom/android/server/LpnetManagerService$2$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$2;

.field final synthetic val$isReInstall:Z

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$varAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$2;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iput-object p2, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    if-nez v6, :cond_0

    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v8, "1"

    # invokes: Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v4, v8}, Lcom/android/server/LpnetManagerService;->access$600(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "LpnetManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUserFSPackages : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_4
    const/4 v3, 0x0

    .local v3, "otherPkgs":Z
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_0

    :cond_7
    const/4 v1, 0x0

    .local v1, "appStatus":Z
    :try_start_2
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v1, :cond_a

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z
    invoke-static {v6, v4}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v5

    .local v5, "versionMatch":Z
    if-nez v5, :cond_8

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_8
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z
    invoke-static {v6, v4}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    .local v2, "c2dmPermExists":Z
    if-nez v2, :cond_9

    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_4
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .end local v1    # "appStatus":Z
    .end local v2    # "c2dmPermExists":Z
    .end local v5    # "versionMatch":Z
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .restart local v1    # "appStatus":Z
    .restart local v5    # "versionMatch":Z
    :catchall_3
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    .restart local v2    # "c2dmPermExists":Z
    :cond_9
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v6

    .end local v2    # "c2dmPermExists":Z
    .end local v5    # "versionMatch":Z
    :cond_a
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_8
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v6

    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method
