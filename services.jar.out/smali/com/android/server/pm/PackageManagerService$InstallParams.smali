.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 15972
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15973
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15974
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15975
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15976
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15977
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15978
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15979
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 15981
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 15982
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15983
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15984
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "installerSourcePackageName"    # Ljava/lang/String;
    .param p8, "volumeUuid"    # Ljava/lang/String;
    .param p9, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p10, "user"    # Landroid/os/UserHandle;
    .param p11, "packageAbiOverride"    # Ljava/lang/String;
    .param p12, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 15989
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15990
    invoke-direct {p0, p1, p10}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15991
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15992
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15993
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15994
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15995
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15996
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15997
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 15998
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 15999
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16000
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 16001
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16018
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16019
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 16020
    .local v1, "installLocation":I
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1

    move v2, v5

    .line 16022
    .local v2, "onSd":Z
    :goto_0
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 16023
    :try_start_0
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 16024
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6

    .line 16025
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_9

    .line 16027
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_0

    .line 16029
    :try_start_1
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$4300(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16036
    :cond_0
    :try_start_2
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 16037
    if-eqz v2, :cond_2

    .line 16038
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16039
    const/4 v5, -0x3

    monitor-exit v7

    .line 16072
    :goto_1
    return v5

    .line 16020
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 16030
    .restart local v2    # "onSd":Z
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    .line 16031
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16032
    const/4 v5, -0x7

    monitor-exit v7

    goto :goto_1

    .line 16066
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 16041
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_3
    monitor-exit v7

    goto :goto_1

    .line 16043
    :cond_3
    if-eqz v2, :cond_4

    .line 16045
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 16048
    :cond_4
    if-ne v1, v5, :cond_5

    .line 16050
    monitor-exit v7

    goto :goto_1

    .line 16051
    :cond_5
    if-ne v1, v6, :cond_7

    .line 16066
    :cond_6
    monitor-exit v7

    .line 16069
    if-eqz v2, :cond_a

    move v5, v6

    .line 16070
    goto :goto_1

    .line 16055
    :cond_7
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 16056
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 16058
    :cond_8
    monitor-exit v7

    goto :goto_1

    .line 16063
    :cond_9
    const/4 v5, -0x4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 16072
    :cond_a
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    .line 16011
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    .line 16012
    const/4 v0, 0x0

    .line 16014
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 16482
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 16483
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16485
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 16489
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16490
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16491
    return-void
.end method

.method public handleStartCopy()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16082
    const/16 v31, 0x1

    .line 16085
    .local v31, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 16086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    if-eqz v44, :cond_9

    .line 16087
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16097
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x8

    if-eqz v44, :cond_b

    const/16 v23, 0x1

    .line 16098
    .local v23, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x10

    if-eqz v44, :cond_c

    const/16 v22, 0x1

    .line 16100
    .local v22, "onInt":Z
    :goto_2
    const/16 v25, 0x0

    .line 16101
    .local v25, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16102
    .local v24, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 16109
    .local v26, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v45, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_d

    const/16 v44, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    move-object/from16 v2, v46

    move/from16 v3, v44

    move/from16 v4, v47

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 16113
    const/16 v31, -0x74

    .line 16163
    :cond_1
    :goto_4
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 16164
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v18, v0

    .line 16165
    .local v18, "loc":I
    const/16 v44, -0x3

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_11

    .line 16166
    const/16 v31, -0x13

    .line 16198
    .end local v18    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 16199
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16201
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_23

    .line 16206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v37

    .line 16207
    .local v37, "userIdentifier":I
    const/16 v44, -0x1

    move/from16 v0, v37

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_3

    .line 16209
    const/16 v37, 0x0

    .line 16216
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v29

    .line 16217
    .local v29, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/16 v19, 0x1

    .line 16225
    .local v19, "needVerificationForPersona":Z
    const/16 v30, 0x1

    .line 16229
    .local v30, "requiresVerificationForPersona":Z
    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v44, :cond_4

    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_4

    .line 16232
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Skipping verification for Persona "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " for package "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16234
    const/16 v30, 0x0

    .line 16240
    :cond_4
    iget v0, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x100

    move/from16 v44, v0

    if-eqz v44, :cond_19

    const/4 v15, 0x1

    .line 16244
    .local v15, "isOpenThemePackage":Z
    :goto_6
    const/16 v16, 0x0

    .line 16245
    .local v16, "isSPRInstallerPackages":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 16246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.w.installer"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.ce.updater"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_1a

    :cond_5
    const/16 v16, 0x1

    .line 16248
    :goto_7
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "isSPRInstallerPackages = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", installerPackageName = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16252
    :cond_6
    const/4 v11, 0x0

    .line 16253
    .local v11, "installFromSBM":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1b

    .line 16254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16255
    .local v14, "installerUid":I
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "installerUid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16256
    const-string v44, "SBM"

    const-string/jumbo v45, "ro.csc.sales_code"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1b

    .line 16257
    const/4 v13, 0x0

    .line 16258
    .local v13, "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16259
    if-eqz v13, :cond_1b

    .line 16260
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_1b

    aget-object v12, v8, v10

    .line 16261
    .local v12, "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "jp.softbank.mb.myd.framework"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_7

    const-string v44, "com.sprint.ce.updater"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_8

    .line 16263
    :cond_7
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "uid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", is sbminstaller. skip verification, pkg : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16264
    const/4 v11, 0x1

    .line 16260
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 16089
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "installFromSBM":Z
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v17    # "len$":I
    .end local v19    # "needVerificationForPersona":Z
    .end local v22    # "onInt":Z
    .end local v23    # "onSd":Z
    .end local v24    # "packageFileTemp":Ljava/io/File;
    .end local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_a

    .line 16090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16091
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 16093
    :cond_a
    new-instance v44, Ljava/lang/IllegalStateException;

    const-string v45, "Invalid stage location"

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 16097
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 16098
    .restart local v23    # "onSd":Z
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 16109
    .restart local v22    # "onInt":Z
    .restart local v24    # "packageFileTemp":Ljava/io/File;
    .restart local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_d
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 16120
    :cond_e
    if-eqz v22, :cond_f

    if-eqz v23, :cond_f

    .line 16123
    const-string v44, "PackageManager"

    const-string v45, "Conflicting flags specified for installing on both internal and external"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16124
    const/16 v31, -0x13

    goto/16 :goto_4

    .line 16126
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-nez v44, :cond_1

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 16136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v34

    .line 16137
    .local v34, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v20

    .line 16140
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v32

    .line 16143
    .local v32, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    add-long v46, v32, v20

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v44

    if-ltz v44, :cond_10

    .line 16144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16155
    :cond_10
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 16157
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, v25

    iput v0, v1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_4

    .line 16167
    .end local v20    # "lowThreshold":J
    .end local v32    # "sizeBytes":J
    .end local v34    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_11
    const/16 v44, -0x4

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 16168
    const/16 v31, -0x1

    goto/16 :goto_5

    .line 16169
    :cond_12
    const/16 v44, -0x1

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 16170
    const/16 v31, -0x4

    goto/16 :goto_5

    .line 16171
    :cond_13
    const/16 v44, -0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_14

    .line 16172
    const/16 v31, -0x2

    goto/16 :goto_5

    .line 16173
    :cond_14
    const/16 v44, -0x6

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 16174
    const/16 v31, -0x3

    goto/16 :goto_5

    .line 16175
    :cond_15
    const/16 v44, -0x5

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    .line 16176
    const/16 v31, -0x14

    goto/16 :goto_5

    .line 16179
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v18

    .line 16180
    const/16 v44, -0x7

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 16181
    const/16 v31, -0x19

    goto/16 :goto_5

    .line 16182
    :cond_17
    if-nez v23, :cond_2

    if-nez v22, :cond_2

    .line 16184
    const/16 v44, 0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_18

    .line 16186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 16191
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 16240
    .end local v18    # "loc":I
    .restart local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 16246
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 16271
    .restart local v11    # "installFromSBM":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    move/from16 v44, v0

    if-nez v44, :cond_26

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v37

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$4800(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v44

    if-eqz v44, :cond_26

    if-eqz v30, :cond_26

    if-nez v15, :cond_26

    if-nez v16, :cond_26

    if-nez v11, :cond_26

    const/16 v43, 0x1

    .line 16277
    .local v43, "verifyInstallPackage":Z
    :goto_9
    if-eqz v43, :cond_2a

    .line 16279
    new-instance v38, Landroid/content/Intent;

    const-string v44, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16281
    .local v38, "verification":Landroid/content/Intent;
    const/high16 v44, 0x10000000

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16282
    new-instance v44, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v44

    const-string v45, "application/vnd.android.package-archive"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16284
    const/16 v44, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16288
    invoke-static/range {v37 .. v37}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v44

    if-eqz v44, :cond_27

    .line 16289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .line 16299
    .local v28, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_a
    const-string v44, "PackageManager"

    const-string v45, "VERIFY"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Found "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " verifiers for intent "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " optional verifiers"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$4908(Lcom/android/server/pm/PackageManagerService;)I

    move-result v39

    .line 16306
    .local v39, "verificationId":I
    const-string v44, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16308
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16311
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16314
    const-string v44, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16317
    const-string v44, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_28

    .line 16322
    const-string v44, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16326
    :goto_b
    const-string v44, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_20

    .line 16330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1c

    .line 16331
    const-string v44, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16334
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1d

    .line 16335
    const-string v44, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16338
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1e

    .line 16339
    const-string v44, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16342
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v44

    if-ltz v44, :cond_1f

    .line 16343
    const-string v44, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16346
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v44

    if-ltz v44, :cond_20

    .line 16347
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16352
    :cond_20
    new-instance v40, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16355
    .local v40, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v40

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v36

    .line 16361
    .local v36, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v42

    .line 16362
    .local v42, "verifierUser":Landroid/os/UserHandle;
    sget-object v44, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_21

    .line 16363
    sget-object v42, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 16370
    :cond_21
    if-eqz v36, :cond_22

    .line 16371
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v6

    .line 16372
    .local v6, "N":I
    if-nez v6, :cond_29

    .line 16373
    const-string v44, "PackageManager"

    const-string v45, "Additional verifiers required, but none installed."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16374
    const/16 v31, -0x16

    .line 16386
    .end local v6    # "N":I
    :cond_22
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_23

    if-eqz v29, :cond_23

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_23

    .line 16393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    .line 16399
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16438
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v37    # "userIdentifier":I
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    .end local v43    # "verifyInstallPackage":Z
    :cond_23
    :goto_c
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_2c

    .line 16440
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_24

    .line 16441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16444
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5200()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_24

    .line 16445
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5200()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V

    .line 16449
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2b

    .line 16450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16451
    .restart local v14    # "installerUid":I
    const/4 v13, 0x0

    .line 16452
    .restart local v13    # "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16453
    if-eqz v13, :cond_2b

    .line 16454
    move-object v8, v13

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_d
    move/from16 v0, v17

    if-ge v10, v0, :cond_2b

    aget-object v12, v8, v10

    .line 16455
    .restart local v12    # "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "packageinstaller"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_25

    .line 16457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16458
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5200()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_25

    .line 16459
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5200()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16454
    :cond_25
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 16271
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v17    # "len$":I
    .restart local v11    # "installFromSBM":Z
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_26
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 16292
    .restart local v38    # "verification":Landroid/content/Intent;
    .restart local v43    # "verifyInstallPackage":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x200

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_a

    .line 16324
    .restart local v39    # "verificationId":I
    :cond_28
    const-string v44, "KNOXVerificationInstallerUid"

    const/16 v45, -0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 16376
    .restart local v6    # "N":I
    .restart local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_29
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    if-ge v9, v6, :cond_22

    .line 16377
    move-object/from16 v0, v36

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    .line 16379
    .local v41, "verifierComponent":Landroid/content/ComponentName;
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16380
    .local v35, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16376
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 16418
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v35    # "sufficientIntent":Landroid/content/Intent;
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verifierComponent":Landroid/content/ComponentName;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_2a
    const-string v44, "PackageManager"

    const-string v45, "Themes INSTALL_SKIP_VERIFICATION"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v31

    goto/16 :goto_c

    .line 16466
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    .end local v43    # "verifyInstallPackage":Z
    :catch_0
    move-exception v27

    .line 16467
    .local v27, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16474
    .end local v27    # "rE":Landroid/os/RemoteException;
    :cond_2b
    :goto_f
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16475
    return-void

    .line 16470
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 16494
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
