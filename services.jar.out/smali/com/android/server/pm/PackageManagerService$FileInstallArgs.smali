.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 13
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 16780
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16781
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v12, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16786
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forward locking only supported in ASEC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16789
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    .prologue
    .line 16792
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16793
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16797
    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16798
    if-eqz p3, :cond_1

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16799
    return-void

    .line 16797
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 16798
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$5500(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .prologue
    .line 16768
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return-object v0
.end method

.method private cleanUp()Z
    .locals 3

    .prologue
    .line 16977
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16978
    :cond_0
    const/4 v0, 0x0

    .line 17004
    :goto_0
    return v0

    .line 16981
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16982
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    .line 16987
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16988
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16989
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16990
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_4

    .line 16991
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couln\'t delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17004
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 16984
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 16993
    :cond_4
    const-string v0, "PackageManager"

    const-string v1, "Couln\'t delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 16996
    :cond_5
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_6

    .line 16997
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 16999
    :cond_6
    const-string v0, "PackageManager"

    const-string/jumbo v1, "delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 4

    .prologue
    .line 17009
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 17010
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17012
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 17013
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17019
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 17020
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    .line 17021
    return-void

    .line 17014
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 22
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 16803
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " already staged; skipping copy"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16806
    const/16 v16, 0x1

    .line 16902
    :goto_0
    return v16

    .line 16810
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 16811
    .local v18, "tempDir":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16812
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16818
    new-instance v17, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .line 16836
    .local v17, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/16 v16, 0x1

    .line 16837
    .local v16, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v16

    .line 16838
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 16839
    const-string v19, "PackageManager"

    const-string v20, "Failed to copy package"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16813
    .end local v16    # "ret":I
    .end local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v18    # "tempDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 16814
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to create copy file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16815
    const/16 v16, -0x4

    goto :goto_0

    .line 16845
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "ret":I
    .restart local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .restart local v18    # "tempDir":Ljava/io/File;
    :cond_1
    const-string/jumbo v19, "device_policy"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    .line 16848
    .local v7, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v7, :cond_5

    .line 16850
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 16851
    .local v11, "id":I
    if-gez v11, :cond_2

    const/4 v11, 0x0

    .line 16852
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v11}, Landroid/app/admin/IDevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v4

    .line 16853
    .local v4, "allowList":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 16854
    const-string v19, "PackageManager"

    const-string v20, "checking allow list after copying finished"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16856
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 16857
    .local v6, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 16858
    .local v5, "allowListArray":[Ljava/lang/String;
    array-length v3, v5

    .line 16860
    .local v3, "allowArrayLen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v3, :cond_3

    .line 16861
    aget-object v19, v5, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v10

    .line 16860
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 16863
    :cond_3
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16864
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16866
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5200()Landroid/content/IHarmonyEAS;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    .line 16867
    const/4 v12, 0x0

    .line 16868
    .local v12, "isAppBlocked":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 16869
    .local v15, "pkgHash":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "base.apk"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16871
    .local v14, "mFile":Ljava/io/File;
    :try_start_2
    invoke-static {v14, v15}, Landroid/content/pm/PackageParser;->getHashValueOfPackage(Ljava/io/File;Ljava/lang/StringBuilder;)V

    .line 16873
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    if-nez v19, :cond_4

    const/4 v12, 0x1

    .line 16877
    :goto_2
    if-eqz v12, :cond_5

    .line 16878
    const/16 v16, -0x74

    .line 16879
    goto/16 :goto_0

    .line 16873
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 16874
    :catch_1
    move-exception v8

    .line 16875
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    goto :goto_2

    .line 16883
    .end local v3    # "allowArrayLen":I
    .end local v4    # "allowList":Ljava/lang/String;
    .end local v5    # "allowListArray":[Ljava/lang/String;
    .end local v6    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v10    # "i":I
    .end local v11    # "id":I
    .end local v12    # "isAppBlocked":Z
    .end local v14    # "mFile":Ljava/io/File;
    .end local v15    # "pkgHash":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v8

    .line 16884
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16889
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "lib"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16890
    .local v13, "libraryRoot":Ljava/io/File;
    const/4 v9, 0x0

    .line 16892
    .local v9, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v9

    .line 16893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v13, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v16

    .line 16899
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 16885
    .end local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v13    # "libraryRoot":Ljava/io/File;
    :catchall_0
    move-exception v19

    throw v19

    .line 16895
    .restart local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v13    # "libraryRoot":Ljava/io/File;
    :catch_3
    move-exception v8

    .line 16896
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    const-string v19, "PackageManager"

    const-string v20, "Copying native libraries failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16897
    const/16 v16, -0x6e

    .line 16899
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 17025
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 17026
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 3
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 16959
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPostInstall for uid{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16960
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16961
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16963
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 16906
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16907
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16909
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16913
    if-eq p1, v5, :cond_0

    .line 16914
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16955
    :goto_0
    return v4

    .line 16918
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 16919
    .local v3, "targetDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16920
    .local v1, "beforeCodeFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v6, v3, v7}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 16924
    .local v0, "afterCodeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16930
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 16931
    const-string v5, "PackageManager"

    const-string v6, "Failed to restorecon"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16925
    :catch_0
    move-exception v2

    .line 16926
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v5, "PackageManager"

    const-string v6, "Failed to rename"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 16936
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16937
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16940
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 16941
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 16943
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 16947
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 16948
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 16949
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 16950
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 16951
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 16952
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 16953
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    move v4, v5

    .line 16955
    goto :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16968
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16973
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
