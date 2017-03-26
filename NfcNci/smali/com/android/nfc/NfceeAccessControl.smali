.class public Lcom/android/nfc/NfceeAccessControl;
.super Ljava/lang/Object;
.source "NfceeAccessControl.java"


# static fields
.field static final DBG:Z

.field public static final NFCEE_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcee_access.xml"

.field static final TAG:Ljava/lang/String; = "NfceeAccess"

.field private static sNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfceeAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 73
    invoke-virtual {p0}, Lcom/android/nfc/NfceeAccessControl;->parseNfceeAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    .line 75
    sput-object p0, Lcom/android/nfc/NfceeAccessControl;->sNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 77
    const-string v0, "NfceeAccess"

    const-string v1, "NfceeAccessContorl object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfceeAccessControl;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/nfc/NfceeAccessControl;->sNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    return-object v0
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 94
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 95
    .local v2, "cached":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit p0

    .line 115
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "access":Z
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 103
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "pkgs":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v8, v1, v3

    .line 105
    .local v8, "uidPkg":Ljava/lang/String;
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 108
    const/4 v0, 0x1

    .line 114
    .end local v8    # "uidPkg":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit p0

    goto :goto_0

    .line 116
    .end local v0    # "access":Z
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cached":Ljava/lang/Boolean;
    .end local v3    # "i$":I
    .end local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "len$":I
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 104
    .restart local v0    # "access":Z
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cached":Ljava/lang/Boolean;
    .restart local v3    # "i$":I
    .restart local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "len$":I
    .restart local v6    # "pkgs":[Ljava/lang/String;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "uidPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 127
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 129
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 130
    iget-object v2, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit p0

    return v2

    .line 133
    .end local v0    # "access":Ljava/lang/Boolean;
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method checkPackageNfceeAccess(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v11, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 149
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x40

    :try_start_0
    invoke-virtual {v9, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 150
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v11, :cond_0

    .line 151
    const/4 v11, 0x0

    .line 187
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v11

    .line 154
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_7

    aget-object v10, v0, v3

    .line 155
    .local v10, "s":Landroid/content/pm/Signature;
    if-nez v10, :cond_2

    .line 154
    .end local v3    # "i$":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 158
    :cond_2
    iget-object v11, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 159
    .local v8, "packages":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 162
    array-length v11, v8

    if-nez v11, :cond_4

    .line 164
    sget-boolean v11, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    if-eqz v11, :cond_3

    const-string v11, "NfceeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Granted NFCEE access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (wildcard)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 167
    :cond_4
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 168
    .local v7, "p":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    sget-boolean v11, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "NfceeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Granted access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (explicit)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5
    const/4 v11, 0x1

    goto :goto_0

    .line 167
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "p":Ljava/lang/String;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "s":Landroid/content/pm/Signature;
    .restart local v3    # "i$":I
    :cond_7
    iget-boolean v11, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    if-eqz v11, :cond_a

    .line 177
    const-string v11, "NfceeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "denied NFCEE access for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with signature:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_9

    aget-object v10, v0, v2

    .line 179
    .restart local v10    # "s":Landroid/content/pm/Signature;
    if-eqz v10, :cond_8

    .line 180
    const-string v11, "NfceeAccess"

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 184
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "len$":I
    .end local v10    # "s":Landroid/content/pm/Signature;
    :catch_0
    move-exception v11

    .line 187
    :cond_9
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v3    # "i$":I
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_a
    move v2, v3

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 288
    const-string v9, "mNfceeAccess="

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/Signature;

    .line 290
    .local v8, "s":Landroid/content/pm/Signature;
    const-string v9, "\t%s ["

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 291
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 292
    .local v7, "ps":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 293
    .local v6, "p":Ljava/lang/String;
    const-string v9, "%s, "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    .end local v6    # "p":Ljava/lang/String;
    :cond_0
    const-string v9, "]"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "ps":[Ljava/lang/String;
    .end local v8    # "s":Landroid/content/pm/Signature;
    :cond_1
    monitor-enter p0

    .line 298
    :try_start_0
    const-string v9, "mNfceeUidCache="

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 300
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 301
    .local v1, "b":Ljava/lang/Boolean;
    const-string v9, "\t%d %s %s\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 303
    .end local v1    # "b":Ljava/lang/Boolean;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseNfceeAccess()Z
    .locals 17

    .prologue
    .line 198
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "/etc/nfcee_access.xml"

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v5, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 200
    .local v10, "reader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 202
    .local v1, "debug":Z
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    .end local v10    # "reader":Ljava/io/FileReader;
    .local v11, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 204
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 205
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v8, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 210
    .local v12, "signature":Landroid/content/pm/Signature;
    const-string v14, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 213
    .local v3, "event":I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "tag":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_5

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 215
    const/4 v12, 0x0

    .line 216
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 218
    const-string v14, "android:signature"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 219
    new-instance v12, Landroid/content/pm/Signature;

    .end local v12    # "signature":Landroid/content/pm/Signature;
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    :cond_1
    if-nez v12, :cond_4

    .line 224
    const-string v14, "NfceeAccess"

    const-string v15, "signer tag is missing android:signature attribute, igorning"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "i":I
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 269
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v14, "NfceeAccess"

    const-string v15, "failed to load NFCEE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    if-eqz v10, :cond_2

    .line 279
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 283
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    const-string v14, "NfceeAccess"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " signature(s) for NFCEE access"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 217
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "i":I
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 227
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 228
    const-string v14, "NfceeAccess"

    const-string v15, "duplicate signature, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v12, 0x0

    .line 230
    goto/16 :goto_0

    .line 232
    .end local v6    # "i":I
    :cond_5
    const/4 v14, 0x3

    if-ne v3, v14, :cond_7

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 233
    if-nez v12, :cond_6

    .line 234
    const-string v14, "NfceeAccess"

    const-string v15, "mis-matched signer tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 271
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v10, v11

    .line 272
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_4
    :try_start_5
    const-string v14, "NfceeAccess"

    const-string v15, "could not find /etc/nfcee_access.xml, no NFCEE access allowed"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    if-eqz v10, :cond_2

    .line 279
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 280
    :catch_2
    move-exception v14

    goto :goto_3

    .line 237
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 273
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v10, v11

    .line 274
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_5
    :try_start_8
    const-string v14, "NfceeAccess"

    const-string v15, "Failed to load NFCEE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 277
    if-eqz v10, :cond_2

    .line 279
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 280
    :catch_4
    move-exception v14

    goto/16 :goto_3

    .line 239
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x2

    if-ne v3, v14, :cond_e

    :try_start_a
    const-string v14, "package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 240
    if-nez v12, :cond_9

    .line 241
    const-string v14, "NfceeAccess"

    const-string v15, "ignoring unnested packge tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 277
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_6
    if-eqz v10, :cond_8

    .line 279
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 280
    :cond_8
    :goto_7
    throw v14

    .line 244
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .line 245
    .local v7, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    :try_start_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-ge v6, v14, :cond_a

    .line 246
    const-string v14, "android:name"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 247
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    :cond_a
    if-nez v7, :cond_c

    .line 252
    const-string v14, "NfceeAccess"

    const-string v15, "package missing android:name, ignoring signer group"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v12, 0x0

    .line 254
    goto/16 :goto_0

    .line 245
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 257
    :cond_c
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 258
    const-string v14, "NfceeAccess"

    const-string v15, "duplicate package name in signer group, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :cond_d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 262
    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_e
    const/4 v14, 0x2

    if-ne v3, v14, :cond_f

    const-string v14, "debug"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v14

    if-eqz v14, :cond_f

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 264
    :cond_f
    const/4 v14, 0x1

    if-ne v3, v14, :cond_0

    .line 277
    if-eqz v11, :cond_10

    .line 279
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-object v10, v11

    .line 280
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v14

    goto/16 :goto_3

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v15

    goto :goto_7

    .line 277
    :catchall_1
    move-exception v14

    goto :goto_6

    .line 273
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 271
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 268
    :catch_a
    move-exception v2

    goto/16 :goto_2

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_10
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3
.end method
