.class final Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsRegistry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;,
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;
    }
.end annotation


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 2

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    .line 1532
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 1533
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    .line 1534
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateAllLegacySettingsIfNeeded()V

    .line 1535
    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/app/backup/BackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .param p1, "x1"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "x2"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "x3"    # I

    .prologue
    .line 1511
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method private ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V
    .locals 12
    .param p1, "secureSettings"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    .line 1857
    const-string v7, "android_id"

    invoke-virtual {p1, v7}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1859
    .local v6, "value":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v6, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    iget v7, p1, Lcom/android/providers/settings/SettingsState;->mKey:I

    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v5

    .line 1866
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1868
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1870
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1872
    if-eqz v4, :cond_0

    .line 1877
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1878
    .local v0, "androidId":Ljava/lang/String;
    const-string v7, "android_id"

    const-string v8, "android"

    invoke-virtual {p1, v7, v0, v8}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1881
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1886
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 1888
    .local v1, "dbm":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "restricted_profile_ssaid"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1889
    const-string v7, "restricted_profile_ssaid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "restricted_profile_ssaid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1870
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "dbm":Landroid/os/DropBoxManager;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private ensureSettingsStateLocked(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 1576
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getMaxBytesPerPackageForType(I)I

    move-result v0

    .line 1578
    .local v0, "maxBytesPerPackage":I
    new-instance v1, Lcom/android/providers/settings/SettingsState;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->access$200(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/android/providers/settings/SettingsState;-><init>(Ljava/lang/Object;Ljava/io/File;II)V

    .line 1580
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1582
    .end local v0    # "maxBytesPerPackage":I
    .end local v1    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :cond_0
    return-void
.end method

.method private getMaxBytesPerPackageForType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2023
    packed-switch p1, :pswitch_data_0

    .line 2030
    :pswitch_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    .line 2026
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    if-eqz p2, :cond_0

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2015
    :goto_0
    return-object v0

    .line 2009
    :cond_0
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2011
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2012
    if-eqz p2, :cond_2

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2014
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2015
    if-eqz p2, :cond_4

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2018
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid settings key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSettingsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 1990
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1991
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 1992
    .local v0, "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_global.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    :goto_0
    return-object v1

    .line 1994
    .end local v0    # "userId":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 1996
    .restart local v0    # "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_system.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 1998
    .end local v0    # "userId":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1999
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 2000
    .restart local v0    # "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_secure.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 2003
    .end local v0    # "userId":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid settings key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTypeFromKey(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1970
    shr-int/lit8 v0, p1, 0x1c

    return v0
.end method

.method private getUserIdFromKey(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1974
    const v0, 0xfffffff

    and-int/2addr v0, p1

    return v0
.end method

.method private insertSettingLockedForPersona(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1654
    const/4 v12, 0x1

    .line 1655
    .local v12, "result":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v15}, Lcom/android/providers/settings/SettingsProvider;->access$600(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/PersonaManager;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1657
    .local v8, "oldId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v15}, Lcom/android/providers/settings/SettingsProvider;->access$600(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/PersonaManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v11

    .line 1658
    .local v11, "personaIds":[I
    if-eqz v11, :cond_2

    array-length v15, v11

    if-lez v15, :cond_2

    .line 1659
    move-object v4, v11

    .local v4, "arr$":[I
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget v10, v4, v5

    .line 1660
    .local v10, "personaId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v15}, Lcom/android/providers/settings/SettingsProvider;->access$600(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/PersonaManager;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/PersonaManager;->settingSyncAllowed(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1661
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v6

    .line 1663
    .local v6, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v13

    .line 1664
    .local v13, "settingsState":Lcom/android/providers/settings/SettingsState;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1666
    .local v14, "success":Z
    if-eqz v14, :cond_0

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1669
    :cond_0
    move v12, v14

    .line 1659
    .end local v6    # "key":I
    .end local v13    # "settingsState":Lcom/android/providers/settings/SettingsState;
    .end local v14    # "success":Z
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1673
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "personaId":I
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    .end local v8    # "oldId":J
    .end local v11    # "personaIds":[I
    :cond_3
    return v12
.end method

.method private isGlobalSettingsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1978
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureSettingsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1986
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemSettingsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 1982
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeKey(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1966
    shl-int/lit8 v0, p1, 0x1c

    or-int/2addr v0, p2

    return v0
.end method

.method private maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    .local p4, "keysCloned":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1952
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1953
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1954
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1955
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1957
    .local v1, "profile":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, p1, :cond_0

    .line 1958
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1954
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1963
    .end local v0    # "i":I
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private migrateAllLegacySettingsIfNeeded()V
    .locals 14

    .prologue
    .line 1740
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$200(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1741
    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-direct {p0, v11, v13}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v6

    .line 1742
    .local v6, "key":I
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1743
    .local v2, "globalFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1744
    monitor-exit v12

    .line 1772
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1749
    .local v4, "identity":J
    :try_start_1
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 1751
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1752
    .local v8, "userCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1753
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v9, v11, Landroid/content/pm/UserInfo;->id:I

    .line 1755
    .local v9, "userId":I
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v11}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11, v9}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 1756
    .local v1, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1757
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v0, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1760
    new-instance v7, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;

    invoke-direct {v7, p0, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    .line 1761
    .local v7, "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->upgradeIfNeededLocked()V

    .line 1764
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v11

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v13}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1765
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1752
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1769
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    .end local v7    # "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    .end local v9    # "userId":I
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1771
    monitor-exit v12

    goto :goto_0

    .end local v2    # "globalFile":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "identity":J
    .end local v6    # "key":I
    .end local v8    # "userCount":I
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1769
    .restart local v2    # "globalFile":Ljava/io/File;
    .restart local v4    # "identity":J
    .restart local v6    # "key":I
    :catchall_1
    move-exception v11

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private migrateLegacySettingsForUserIfNeededLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1776
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v3

    .line 1777
    .local v3, "secureKey":I
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1778
    .local v2, "secureFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1782
    :cond_0
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 1783
    .local v1, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1785
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0
.end method

.method private migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 7
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "userId"    # I

    .prologue
    .line 1791
    if-nez p3, :cond_0

    .line 1792
    const/4 v6, 0x0

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1793
    .local v0, "globalKey":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1794
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1795
    .local v1, "globalSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "global"

    invoke-direct {p0, v1, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1800
    .end local v0    # "globalKey":I
    .end local v1    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    :cond_0
    const/4 v6, 0x2

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v2

    .line 1801
    .local v2, "secureKey":I
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1802
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/SettingsState;

    .line 1803
    .local v3, "secureSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "secure"

    invoke-direct {p0, v3, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1804
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V

    .line 1805
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1808
    const/4 v6, 0x1

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v4

    .line 1809
    .local v4, "systemKey":I
    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1810
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/settings/SettingsState;

    .line 1811
    .local v5, "systemSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "system"

    invoke-direct {p0, v5, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1815
    # getter for: Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$800()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1816
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->dropDatabase()V

    .line 1820
    :goto_0
    return-void

    .line 1818
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->backupDatabase()V

    goto :goto_0
.end method

.method private migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .param p1, "settingsState"    # Lcom/android/providers/settings/SettingsState;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1824
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1825
    .local v1, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1827
    # getter for: Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$900()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1830
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1854
    :goto_0
    return-void

    .line 1835
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1852
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1839
    :cond_1
    :try_start_1
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1840
    .local v11, "nameColumnIdx":I
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1842
    .local v13, "valueColumnIdx":I
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 1844
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1845
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1846
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1847
    .local v12, "value":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {p1, v10, v12, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1849
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1852
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameColumnIdx":I
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "valueColumnIdx":I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v11    # "nameColumnIdx":I
    .restart local v13    # "valueColumnIdx":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private notifyForSettingsChange(ILjava/lang/String;)V
    .locals 11
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x64

    .line 1900
    const/4 v0, 0x0

    .line 1901
    .local v0, "backedUpDataChanged":Z
    const/4 v1, 0x0

    .line 1902
    .local v1, "property":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1903
    const-string v1, "sys.settings_global_version"

    .line 1904
    const/4 v0, 0x1

    .line 1913
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1914
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 1915
    .local v4, "version":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    .end local v4    # "version":J
    :cond_1
    if-eqz v0, :cond_2

    .line 1923
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1928
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v3

    .line 1929
    .local v3, "userId":I
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1931
    .local v2, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1934
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1935
    if-ge v3, v10, :cond_6

    .line 1936
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1000()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    .line 1947
    :cond_3
    :goto_1
    return-void

    .line 1905
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "userId":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1906
    const-string v1, "sys.settings_secure_version"

    .line 1907
    const/4 v0, 0x1

    goto :goto_0

    .line 1908
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1909
    const-string v1, "sys.settings_system_version"

    .line 1910
    const/4 v0, 0x1

    goto :goto_0

    .line 1938
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "userId":I
    :cond_6
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1100()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 1940
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1941
    if-ge v3, v10, :cond_8

    .line 1942
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1200()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 1944
    :cond_8
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1100()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsState;

    .line 1731
    .local v0, "settingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v0, :cond_0

    .line 1736
    .end local v0    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :goto_0
    return-object v0

    .line 1735
    .restart local v0    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsForUserLocked(I)V

    .line 1736
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public deleteSettingLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1680
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1682
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1683
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->deleteSettingLocked(Ljava/lang/String;)Z

    move-result v2

    .line 1685
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1686
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1688
    :cond_0
    return v2
.end method

.method public ensureSettingsForUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1550
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserIfNeededLocked(I)V

    .line 1553
    if-nez p1, :cond_0

    .line 1554
    invoke-direct {p0, v5, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1555
    .local v0, "globalKey":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1559
    .end local v0    # "globalKey":I
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v1

    .line 1560
    .local v1, "secureKey":I
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1563
    invoke-virtual {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v2

    .line 1564
    .local v2, "secureSettings":Lcom/android/providers/settings/SettingsState;
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V

    .line 1567
    const/4 v5, 0x1

    invoke-direct {p0, v5, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v3

    .line 1568
    .local v3, "systemKey":I
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1571
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;

    invoke-direct {v4, p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    .line 1572
    .local v4, "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->upgradeIfNeededLocked()V

    .line 1573
    return-void
.end method

.method public getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1694
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1695
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    return-object v2
.end method

.method public getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1544
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1545
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    return-object v1
.end method

.method public getSettingsNamesLocked(II)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1538
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1539
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1540
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1625
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1626
    :cond_0
    const/16 v3, 0x64

    if-lt p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1627
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLockedForPersona(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1628
    const/4 p2, 0x0

    .line 1635
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1637
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1638
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1640
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 1641
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1644
    # invokes: Lcom/android/providers/settings/SettingsProvider;->logValueForAudit(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {p3, p4, p2}, Lcom/android/providers/settings/SettingsProvider;->access$500(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1647
    :cond_2
    return v2

    .line 1629
    .end local v0    # "key":I
    .end local v1    # "settingsState":Lcom/android/providers/settings/SettingsState;
    .end local v2    # "success":Z
    :cond_3
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLockedForPersona(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onPackageRemovedLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1722
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1723
    .local v0, "systemKey":I
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1724
    .local v1, "systemSettings":Lcom/android/providers/settings/SettingsState;
    if-eqz v1, :cond_0

    .line 1725
    invoke-virtual {v1, p1}, Lcom/android/providers/settings/SettingsState;->onPackageRemovedLocked(Ljava/lang/String;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public removeUserStateLocked(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "permanently"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1588
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v2

    .line 1589
    .local v2, "systemKey":I
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/SettingsState;

    .line 1590
    .local v3, "systemSettingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v3, :cond_0

    .line 1591
    if-eqz p2, :cond_2

    .line 1592
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1593
    invoke-virtual {v3, v5}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    .line 1605
    :cond_0
    :goto_0
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1606
    .local v0, "secureKey":I
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1607
    .local v1, "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v1, :cond_1

    .line 1608
    if-eqz p2, :cond_3

    .line 1609
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1610
    invoke-virtual {v1, v5}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    .line 1620
    :cond_1
    :goto_1
    return-void

    .line 1595
    .end local v0    # "secureKey":I
    .end local v1    # "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    :cond_2
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$1;

    invoke-direct {v4, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$1;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    invoke-virtual {v3, v4}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1612
    .restart local v0    # "secureKey":I
    .restart local v1    # "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    :cond_3
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;

    invoke-direct {v4, p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    invoke-virtual {v1, v4}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1700
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1702
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1703
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1705
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1706
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1709
    # invokes: Lcom/android/providers/settings/SettingsProvider;->logValueForAudit(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {p3, p4, p2}, Lcom/android/providers/settings/SettingsProvider;->access$500(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1713
    :cond_0
    return v2
.end method
