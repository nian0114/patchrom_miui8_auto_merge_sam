.class public Lcom/android/server/GoodContainer;
.super Lcom/android/server/SEAMSContainer;
.source "GoodContainer.java"


# static fields
.field private static final ALLOWED_SEINFO:[Ljava/lang/String;

.field private static final DUMMY_PARAMETER:I = -0x1

.field private static final GOOD_AGENT_PRIOR_SEINFO:Ljava/lang/String; = "good_trustonicpartner"

.field private static final GOOD_MAC_PERM:Ljava/lang/String; = "/data/security/good/mac_permissions.xml"

.field private static final GOOD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/good"

.field private static final GOOD_SEAPP_CONTEXTS:Ljava/lang/String; = "/data/security/good/seapp_contexts"

.field private static final GSD_CATEGORY:I = 0x66

.field private static final GSD_DATATYPE:Ljava/lang/String; = "good_app_data_file"

.field private static final GSD_DOMAIN:Ljava/lang/String; = "good_app"

.field private static final GSD_SEINFO:Ljava/lang/String; = "gsd"

.field private static final GTD_DATATYPE:Ljava/lang/String; = "app_data_file"

.field private static final GTD_DOMAIN:Ljava/lang/String; = "gad_untrusted_app"

.field private static final GTD_SEINFO:Ljava/lang/String; = "gtd"

.field private static final MDM_SEAPP_CONTEXTS:Ljava/lang/String; = "/data/security/seapp_contexts"

.field private static final S_MAC_POLICY_FILE:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "GoodContainer"

.field private static final UNTRUSTED_CATEGORY_BEGIN:I = 0x2bd

.field private static final USER_ISOLATED_APP:Ljava/lang/String; = "_isolated"

.field private static final USER_NORMAL_APP:Ljava/lang/String; = "_app"

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keyboard"

    aput-object v1, v0, v3

    const-string v1, "untrusted"

    aput-object v1, v0, v4

    const-string v1, "gmscore"

    aput-object v1, v0, v5

    const-string v1, "chrome"

    aput-object v1, v0, v6

    const-string v1, "default"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-array v0, v2, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/spota/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    const-string v2, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/GoodContainer;->S_MAC_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    sput-object p1, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/GoodContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public activateDomain(IZ)I
    .locals 24
    .param p1, "uid"    # I
    .param p2, "isBundleActivation"    # Z

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v2, "/data/security/good"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v16, "goodDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v18, 0x0

    .local v18, "macPermFile":Ljava/io/File;
    const/16 v21, 0x0

    .local v21, "seappConfig":Ljava/io/File;
    const/16 v20, 0x0

    .local v20, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/good/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v18    # "macPermFile":Ljava/io/File;
    .local v1, "macPermFile":Ljava/io/File;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .local v19, "packagesList":[Ljava/lang/String;
    if-nez v19, :cond_2

    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "activateDomain - packageList is null"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, -0x1

    goto :goto_0

    .end local v1    # "macPermFile":Ljava/io/File;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v16    # "goodDir":Ljava/io/File;
    .end local v19    # "packagesList":[Ljava/lang/String;
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "seappConfig":Ljava/io/File;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Issue with good directory"

    invoke-virtual {v2, v4, v5, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0

    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v1    # "macPermFile":Ljava/io/File;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v16    # "goodDir":Ljava/io/File;
    .restart local v19    # "packagesList":[Ljava/lang/String;
    .restart local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v21    # "seappConfig":Ljava/io/File;
    :cond_2
    :try_start_3
    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget-object v3, v19, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x40

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v20

    if-nez v20, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    .local v23, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v23

    array-length v2, v0

    new-array v14, v2, [Ljava/lang/String;

    .local v14, "certSignatures":[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    aget-object v2, v23, v17

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v3, v14}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_6

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string v4, "good_trustonicpartner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v13, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v2, :cond_6

    iget v2, v13, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v4, 0x2bd

    if-ge v2, v4, :cond_6

    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activateDomain, part of other container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v13, :cond_7

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x2bc

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/GoodContainer;->checkCategoryRange(Ljava/lang/String;III)I

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, -0x9

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_a
    new-instance v22, Ljava/io/File;

    const-string v2, "/data/security/good/seapp_contexts"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v21    # "seappConfig":Ljava/io/File;
    .local v22, "seappConfig":Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "reloadseappcontexts returned false"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_10

    sget-object v2, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_11

    sget-object v2, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    :cond_11
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_12
    sget-object v2, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->setSEContainerClipboardMode(II)I

    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "additionIntent":Landroid/content/Intent;
    const-string v2, "secontainerid"

    const/16 v4, 0x66

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Broadcast addition of good secontainer clipboard:102"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v2, 0x66

    goto/16 :goto_0

    .end local v1    # "macPermFile":Ljava/io/File;
    .end local v12    # "additionIntent":Landroid/content/Intent;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "certSignatures":[Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "packagesList":[Ljava/lang/String;
    .end local v22    # "seappConfig":Ljava/io/File;
    .end local v23    # "signatures":[Landroid/content/pm/Signature;
    .restart local v18    # "macPermFile":Ljava/io/File;
    .restart local v21    # "seappConfig":Ljava/io/File;
    :catch_1
    move-exception v15

    move-object/from16 v1, v18

    .end local v18    # "macPermFile":Ljava/io/File;
    .restart local v1    # "macPermFile":Ljava/io/File;
    .restart local v15    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "exceptions in activateDomain"

    invoke-virtual {v2, v4, v5, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v20, :cond_13

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_13
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    if-eqz v21, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_14
    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_15

    sget-object v2, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    :cond_15
    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v15    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v15

    goto/16 :goto_2

    .end local v21    # "seappConfig":Ljava/io/File;
    .restart local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "certSignatures":[Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v19    # "packagesList":[Ljava/lang/String;
    .restart local v22    # "seappConfig":Ljava/io/File;
    .restart local v23    # "signatures":[Landroid/content/pm/Signature;
    :catch_3
    move-exception v15

    move-object/from16 v21, v22

    .end local v22    # "seappConfig":Ljava/io/File;
    .restart local v21    # "seappConfig":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .locals 27

    .prologue
    new-instance v9, Ljava/io/File;

    const-string v24, "/data/security/good/mac_permissions.xml"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "macPermFile":Ljava/io/File;
    const/4 v11, 0x0

    .local v11, "packageName":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .local v4, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-nez v24, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    invoke-virtual {v3, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    const-string v24, "policy"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .local v13, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, "policyElement":Lorg/w3c/dom/Element;
    const/16 v20, 0x0

    .local v20, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .local v15, "seinfoElementCur":Lorg/w3c/dom/Element;
    const/16 v17, 0x0

    .local v17, "serviceElementCur":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .local v10, "newElement":Lorg/w3c/dom/Element;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .end local v12    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v12, Lorg/w3c/dom/Element;

    .restart local v12    # "policyElement":Lorg/w3c/dom/Element;
    const-string v24, "signer"

    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .local v19, "signer":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "seinfoNodeList":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .local v18, "serviceNodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v8, v0, :cond_3

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string v24, "seinfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .end local v15    # "seinfoElementCur":Lorg/w3c/dom/Element;
    check-cast v15, Lorg/w3c/dom/Element;

    .restart local v15    # "seinfoElementCur":Lorg/w3c/dom/Element;
    const-string v24, "value"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "good_trustonicpartner"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    sget-object v24, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v25, "GoodContainer"

    const-string v26, "more than 1 service tag for this node. can\'t tell who is agent"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "i":I
    .end local v10    # "newElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyElement":Lorg/w3c/dom/Element;
    .end local v13    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "seinfoElementCur":Lorg/w3c/dom/Element;
    .end local v16    # "seinfoNodeList":Lorg/w3c/dom/NodeList;
    .end local v17    # "serviceElementCur":Lorg/w3c/dom/Element;
    .end local v18    # "serviceNodeList":Lorg/w3c/dom/NodeList;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :goto_1
    return v24

    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_1
    const/16 v24, 0x0

    goto :goto_1

    .restart local v8    # "i":I
    .restart local v10    # "newElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v13    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "seinfoElementCur":Lorg/w3c/dom/Element;
    .restart local v16    # "seinfoNodeList":Lorg/w3c/dom/NodeList;
    .restart local v17    # "serviceElementCur":Lorg/w3c/dom/Element;
    .restart local v18    # "serviceNodeList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .end local v17    # "serviceElementCur":Lorg/w3c/dom/Element;
    check-cast v17, Lorg/w3c/dom/Element;

    .restart local v17    # "serviceElementCur":Lorg/w3c/dom/Element;
    const-string v24, "service"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v24, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v24, "name"

    const-string v25, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "seinfo"

    const-string v25, "seinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "category"

    const-string v25, "category"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "allowcategory"

    const-string v25, "allowcategory"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "agent"

    const-string v25, "true"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .local v23, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v22

    .local v22, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v21, 0x0

    .local v21, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v21, Ljavax/xml/transform/dom/DOMSource;

    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .restart local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v14, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/io/File;->setWritable(Z)Z

    :cond_4
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, -0x1

    goto/16 :goto_1

    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .restart local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "i":I
    .end local v10    # "newElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyElement":Lorg/w3c/dom/Element;
    .end local v13    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v15    # "seinfoElementCur":Lorg/w3c/dom/Element;
    .end local v16    # "seinfoNodeList":Lorg/w3c/dom/NodeList;
    .end local v17    # "serviceElementCur":Lorg/w3c/dom/Element;
    .end local v18    # "serviceNodeList":Lorg/w3c/dom/NodeList;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v7

    .local v7, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :goto_2
    const/16 v24, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v7

    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2

    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v7

    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v12, 0x0

    .local v12, "certMatch":Z
    const/4 v11, 0x0

    .local v11, "appNotInstalled":Z
    const/4 v8, -0x1

    .local v8, "addSuccess":I
    invoke-virtual {p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    const/16 v3, 0x66

    move/from16 v0, p3

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerId mismatch, expected id:102, and got:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xc

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .local v2, "signature":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/GoodContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_2

    const/16 v3, -0xe

    goto :goto_0

    :cond_2
    if-nez v14, :cond_4

    const/4 v3, 0x0

    aget-object v2, p2, v3

    const/4 v11, 0x1

    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/security/good/mac_permissions.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "macPermFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/GoodContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x8

    goto :goto_0

    .end local v1    # "macPermFile":Ljava/io/File;
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "signature":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "signature":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    :cond_5
    if-nez v12, :cond_3

    const/16 v3, -0xd

    goto :goto_0

    .restart local v1    # "macPermFile":Ljava/io/File;
    :cond_6
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_a

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v3, :cond_7

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v4, 0x2bd

    if-ge v3, v4, :cond_7

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToContainer, part of other container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v10, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x9

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    .local v9, "allowed":Z
    const/4 v13, 0x0

    .local v13, "cnt":I
    :goto_1
    sget-object v3, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_8

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v4, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v9, 0x1

    :cond_8
    if-nez v9, :cond_b

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToContainer, not an allowed seinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x3

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v9    # "allowed":Z
    .end local v13    # "cnt":I
    :cond_a
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "appInfo or seinfo is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    .restart local v9    # "allowed":Z
    .restart local v13    # "cnt":I
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_c

    if-eqz v10, :cond_d

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/16 v4, 0x66

    const/16 v5, 0x2bc

    move/from16 v0, p4

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/GoodContainer;->checkCategoryRange(Ljava/lang/String;III)I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, -0x9

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_d

    if-eqz v10, :cond_d

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x2bc

    move/from16 v0, p4

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/GoodContainer;->checkCategoryRange(Ljava/lang/String;III)I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, -0x9

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_e

    const-string v4, "gsd"

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v8

    :goto_2
    if-eqz v8, :cond_10

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addEntryToMac failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_f

    const-string v4, "gtd"

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v8

    goto :goto_2

    :cond_f
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a supported appType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x3

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v11}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_11
    if-nez v11, :cond_12

    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public deActivateDomain(I)I
    .locals 22
    .param p1, "uid"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    const/4 v14, 0x0

    .local v14, "macPermFile":Ljava/io/File;
    const/16 v19, 0x0

    .local v19, "seappConfig":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v21, -0x1

    .local v21, "status":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/security/good/mac_permissions.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "macPermFile":Ljava/io/File;
    .local v2, "macPermFile":Ljava/io/File;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .local v15, "packagesList":[Ljava/lang/String;
    if-nez v15, :cond_1

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "deactivateDomain - packageList is null"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    array-length v3, v15

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no packages associated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    aget-object v4, v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v5, 0x40

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    if-nez v16, :cond_3

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "couldn\'t get packageInfo. pkgInfo is null"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    .local v17, "propertyValue":I
    const-string v3, "persist.security.good.enable"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v17, 0x1

    :cond_4
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    invoke-static {v2, v4, v3, v0}, Lcom/android/server/GoodContainer;->isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "Good Container not empty. Please remove all apps from container before deactivating"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xb

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getSEContainerClipboardMode(I)I

    move-result v21

    if-nez v17, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "removeEntryFromMac - failed to remove generic_mdm tag"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_6
    const-string v3, "persist.security.good.enable"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "removeEntryFromMac - fail to remove entry from mac_permissions.xml"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "fail to load the container setting"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_9
    new-instance v20, Ljava/io/File;

    const-string v3, "/data/security/good/seapp_contexts"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v19    # "seappConfig":Ljava/io/File;
    .local v20, "seappConfig":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "cound not successfully remove gsd entry from seapp_contexts"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "cound not successfully remove gtd entry from seapp_contexts"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "cound not successfully remove isolated gsd entry from seapp_contexts"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "cound not successfully remove isolated gtd entry from seapp_contexts"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_e

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "reloadseappcontexts returned false"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v3, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v3, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "SetActivationStatus - fail to set system property to 0"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v3, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, -0x1

    goto/16 :goto_0

    .end local v2    # "macPermFile":Ljava/io/File;
    .end local v15    # "packagesList":[Ljava/lang/String;
    .end local v17    # "propertyValue":I
    .end local v20    # "seappConfig":Ljava/io/File;
    .restart local v14    # "macPermFile":Ljava/io/File;
    .restart local v19    # "seappConfig":Ljava/io/File;
    :catch_0
    move-exception v13

    move-object v2, v14

    .end local v14    # "macPermFile":Ljava/io/File;
    .restart local v2    # "macPermFile":Ljava/io/File;
    .local v13, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "exceptions in deActivateDomain"

    invoke-virtual {v3, v5, v6, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsd"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    if-eqz v19, :cond_11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_app"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gsd"

    const-string v10, "good_app"

    const-string v11, "good_app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_isolated"

    const/4 v8, 0x0

    const-string v9, "gtd"

    const-string v10, "gad_untrusted_app"

    const-string v11, "app_data_file"

    const/16 v12, 0x66

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_11
    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z

    const-string v3, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    const/4 v3, -0x1

    goto/16 :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "seappConfig":Ljava/io/File;
    .restart local v15    # "packagesList":[Ljava/lang/String;
    .restart local v17    # "propertyValue":I
    .restart local v20    # "seappConfig":Ljava/io/File;
    :cond_12
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.SECONTAINER_REMOVED"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v18, "removalIntent":Landroid/content/Intent;
    const-string v3, "secontainerid"

    const/16 v5, 0x66

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "Broadcast removal of good secontainer clipboard:102"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v21, :cond_14

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Good clipboard is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleting the entry now"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/server/GoodContainer;->deleteSEContainerClipboardTableEntry(II)I

    :cond_13
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_13

    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "GoodContainer"

    const-string v6, "Error retrieving status of Good clipboard "

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v15    # "packagesList":[Ljava/lang/String;
    .end local v17    # "propertyValue":I
    .end local v18    # "removalIntent":Landroid/content/Intent;
    .end local v20    # "seappConfig":Ljava/io/File;
    .restart local v19    # "seappConfig":Ljava/io/File;
    :catch_1
    move-exception v13

    goto/16 :goto_1

    .end local v19    # "seappConfig":Ljava/io/File;
    .restart local v15    # "packagesList":[Ljava/lang/String;
    .restart local v17    # "propertyValue":I
    .restart local v20    # "seappConfig":Ljava/io/File;
    :catch_2
    move-exception v13

    move-object/from16 v19, v20

    .end local v20    # "seappConfig":Ljava/io/File;
    .restart local v19    # "seappConfig":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public getActivationStatus()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/GoodContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v3

    .local v3, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService;->isSEContainerActivated(I)Z

    move-result v2

    .local v2, "isGoodContainerActivated":Z
    const/4 v0, 0x0

    .local v0, "activation_status":Z
    const/4 v4, 0x0

    .local v4, "val":Ljava/lang/String;
    const-string v6, "persist.security.good.enable"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 2
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    if-nez p1, :cond_0

    const-string p1, "_app"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " levelFrom=user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v4, 0x1

    const-string v1, "dummy"

    .local v1, "param1":Ljava/lang/String;
    const-string v2, "dummy"

    .local v2, "param2":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/GoodContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .local v7, "retContainerID":I
    new-array v6, v4, [I

    const/4 v0, 0x0

    aput v7, v6, v0

    .end local v7    # "retContainerID":I
    :goto_0
    return-object v6

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "appNotInstalled":Z
    const/4 v2, 0x0

    .local v2, "certMatch":Z
    const/4 v1, 0x0

    .local v1, "appTypeFound":Z
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    const/4 v8, -0x1

    if-ne p4, v8, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/GoodContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v3

    .local v3, "containerIds":[I
    const/4 v8, 0x0

    aget v8, v3, v8

    const/16 v9, 0x66

    if-ne v8, v9, :cond_1

    const/4 p4, 0x1

    const/16 p3, 0x66

    .end local v3    # "containerIds":[I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, -0x1

    :goto_0
    return v8

    .restart local v3    # "containerIds":[I
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {p0, p1, v8}, Lcom/android/server/GoodContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v3

    if-ge v4, v8, :cond_2

    aget v8, v3, v4

    const/16 v9, 0x66

    if-ne v8, v9, :cond_3

    const/4 p4, 0x2

    const/16 p3, 0x66

    const/4 v1, 0x1

    .end local v4    # "i":I
    :cond_2
    if-nez v1, :cond_0

    const/4 v8, -0x1

    goto :goto_0

    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3    # "containerIds":[I
    .end local v4    # "i":I
    :cond_4
    const/4 v6, 0x0

    .local v6, "signature":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/GoodContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez p2, :cond_5

    const/4 v8, -0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_7

    const/4 v8, 0x0

    aget-object v6, p2, v8

    const/4 v0, 0x1

    :cond_6
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/security/good/mac_permissions.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "macPermFile":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/android/server/GoodContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, -0x8

    goto :goto_0

    .end local v5    # "macPermFile":Ljava/io/File;
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "signature":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "signature":Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_6

    const/16 v8, -0xd

    goto :goto_0

    .restart local v5    # "macPermFile":Ljava/io/File;
    :cond_9
    const/16 v8, 0x66

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, p1, v8, p4}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, -0x1

    goto :goto_0

    :cond_a
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, -0x1

    goto :goto_0

    :cond_b
    if-nez v0, :cond_c

    sget-object v8, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    const/4 v8, -0x1

    goto :goto_0

    :cond_c
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public updateSeappContextsAndReload()I
    .locals 18

    .prologue
    new-instance v15, Ljava/io/File;

    const-string v1, "/data/security/good/seapp_contexts"

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, "seappConfig":Ljava/io/File;
    const/4 v9, 0x0

    .local v9, "br":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .local v14, "nooflines":I
    const/4 v11, 0x0

    .local v11, "count":I
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "/data/security/good/seapp_contexts file exists, update the file and reload seapp contexts"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v10, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .local v13, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    add-int/lit8 v14, v14, 0x1

    const-string v1, "levelFrom=user"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    if-ge v11, v14, :cond_5

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v17

    .local v17, "status":Z
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/security/good/seapp_contexts file deleted, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    const-string v1, "/data/security/good/seapp_contexts"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v15    # "seappConfig":Ljava/io/File;
    .local v16, "seappConfig":Ljava/io/File;
    if-eqz v17, :cond_2

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_app"

    const/4 v4, 0x0

    const-string v5, "gsd"

    const-string v6, "good_app"

    const-string v7, "good_app_data_file"

    const/16 v8, 0x66

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_app"

    const/4 v4, 0x0

    const-string v5, "gtd"

    const-string v6, "gad_untrusted_app"

    const-string v7, "app_data_file"

    const/16 v8, 0x66

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_isolated"

    const/4 v4, 0x0

    const-string v5, "gsd"

    const-string v6, "good_app"

    const-string v7, "good_app_data_file"

    const/16 v8, 0x66

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_isolated"

    const/4 v4, 0x0

    const-string v5, "gtd"

    const-string v6, "gad_untrusted_app"

    const-string v7, "app_data_file"

    const/16 v8, 0x66

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/SELinux;->reloadSeappContexts()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "seappConfig":Ljava/io/File;
    .end local v17    # "status":Z
    .restart local v15    # "seappConfig":Ljava/io/File;
    :goto_1
    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :cond_4
    :goto_3
    return v1

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_5
    if-ne v11, v14, :cond_7

    :try_start_4
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "the levelFrom=user already exists on all lines, no change needed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x0

    if-eqz v10, :cond_6

    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :cond_7
    :try_start_6
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "Error..."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, -0x1

    if-eqz v10, :cond_8

    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_8
    :goto_5
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v13    # "line":Ljava/lang/String;
    :cond_9
    :try_start_8
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "/data/security/good/seapp_contexts file does not exist, no changes"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    .local v12, "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "updateSeappContextsAndReload IOException"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v1, -0x1

    if-eqz v9, :cond_4

    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_3

    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    sget-object v1, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "GoodContainer"

    const-string v3, "updateSeappContextsAndReload exception"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v1, -0x1

    if-eqz v9, :cond_4

    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v9, :cond_a

    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_a
    :goto_9
    throw v1

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_5

    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "seappConfig":Ljava/io/File;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "seappConfig":Ljava/io/File;
    .restart local v17    # "status":Z
    :catchall_2
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "seappConfig":Ljava/io/File;
    .restart local v15    # "seappConfig":Ljava/io/File;
    goto :goto_8

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v17    # "status":Z
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "seappConfig":Ljava/io/File;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "seappConfig":Ljava/io/File;
    .restart local v17    # "status":Z
    :catch_9
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "seappConfig":Ljava/io/File;
    .restart local v15    # "seappConfig":Ljava/io/File;
    goto :goto_7

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v17    # "status":Z
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catch_a
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "seappConfig":Ljava/io/File;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "seappConfig":Ljava/io/File;
    .restart local v17    # "status":Z
    :catch_b
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "seappConfig":Ljava/io/File;
    .restart local v15    # "seappConfig":Ljava/io/File;
    goto :goto_6
.end method
