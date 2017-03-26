.class public Lcom/android/nfc/RegisteredComponentCache;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;,
        Lcom/android/nfc/RegisteredComponentCache$CacheThread;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "RegisteredComponentCache"


# instance fields
.field final mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMetaDataName:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/RegisteredComponentCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    .line 90
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mPersonaManager:Landroid/os/PersonaManager;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mUserManager:Landroid/os/UserManager;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 100
    new-instance v3, Lcom/android/nfc/RegisteredComponentCache$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/nfc/RegisteredComponentCache$1;-><init>(Lcom/android/nfc/RegisteredComponentCache;)V

    .line 110
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v9, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v17, "knoxPolicyFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.container.action.nfc.policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v18, "com.sec.knox.container.peripheral.POLICY_UPDATE"

    const/16 v19, 0x0

    move-object v15, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 138
    .end local v17    # "knoxPolicyFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private collectPackagesForKnox(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const-string v10, "RegisteredComponentCache"

    const-string v11, "Collect Tech packages for Knox"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 297
    .local v0, "currUser":I
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v0, :cond_0

    .line 298
    const-string v10, "RegisteredComponentCache"

    const-string v11, "clearing owner\'s component list due to kiosk mode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_0
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 304
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 305
    .local v8, "user":Landroid/content/pm/UserInfo;
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v10, v0, :cond_1

    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPersonaManager:Landroid/os/PersonaManager;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager;->isNFCAllowed(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 310
    const-string v10, "RegisteredComponentCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Collecting NFC Tech components for Knox "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 315
    .local v1, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 322
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 324
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p0, v5, v6, p1}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "RegisteredComponentCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to load component info for NFC Knox "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v2

    .line 318
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "RegisteredComponentCache"

    const-string v11, "Could not create user package context for NFC Knox"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return-void

    .line 329
    .restart local v1    # "currentUser":Landroid/os/UserHandle;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_2
    move-exception v2

    .line 330
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "RegisteredComponentCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to load component info for NFC Knox "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 179
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_0
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 195
    .local v0, "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    const-string v2, "RegisteredComponentCache"

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v0    # "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "RegisteredComponentCache"

    const-string v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->close()V

    .line 190
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 191
    return-void
.end method

.method generateComponentsList()V
    .locals 10

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct {v1, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 203
    .local v1, "currentUser":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 209
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 212
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 214
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "RegisteredComponentCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "RegisteredComponentCache"

    const-string v8, "Could not create user package context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void

    .line 217
    .restart local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .restart local v1    # "currentUser":Landroid/os/UserHandle;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "RegisteredComponentCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    sget-object v7, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    invoke-direct {p0, v0}, Lcom/android/nfc/RegisteredComponentCache;->collectPackagesForKnox(Ljava/util/ArrayList;)V

    .line 230
    :cond_1
    sget-boolean v7, Lcom/android/nfc/RegisteredComponentCache;->DBG:Z

    if-eqz v7, :cond_2

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/nfc/RegisteredComponentCache;->dump(Ljava/util/ArrayList;)V

    .line 234
    :cond_2
    monitor-enter p0

    .line 235
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    .line 236
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 243
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 245
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 246
    if-nez v3, :cond_1

    .line 247
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catch_0
    move-exception v7

    .line 253
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v0

    .line 250
    :cond_1
    :try_start_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/RegisteredComponentCache;->parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 257
    :cond_2
    return-void
.end method

.method parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v6, 0x2

    .line 262
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 263
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v6, :cond_0

    .line 264
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 271
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "tagName":Ljava/lang/String;
    if-ne v0, v6, :cond_3

    const-string v5, "tech"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 273
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 284
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 285
    return-void

    .line 274
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    const-string v5, "tech-list"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 276
    .local v2, "size":I
    if-lez v2, :cond_2

    .line 277
    new-array v4, v2, [Ljava/lang/String;

    .line 278
    .local v4, "techs":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "techs":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 279
    .restart local v4    # "techs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 280
    new-instance v5, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    invoke-direct {v5, p4, v4}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;-><init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
