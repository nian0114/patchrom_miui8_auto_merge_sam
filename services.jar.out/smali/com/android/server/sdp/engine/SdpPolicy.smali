.class public Lcom/android/server/sdp/engine/SdpPolicy;
.super Ljava/lang/Object;
.source "SdpPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

.field private mPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Ljava/util/List;)V
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "owner"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "privilegedApps":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    iput-object p3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-void
.end method

.method private matches(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z
    .locals 2
    .param p1, "domain1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .param p2, "domain2"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z
    .locals 8
    .param p1, "privilegedApp"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    const/4 v6, 0x0

    .local v6, "ret":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "candidateAlias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "candidatePkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .local v2, "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, "preExistingPkg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .end local v2    # "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "preExistingPkg":Ljava/lang/String;
    :goto_0
    return v7

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    move v7, v6

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    return-object v0
.end method

.method public getPrivilegedApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-object v0
.end method

.method public isAuthorized(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z
    .locals 3
    .param p1, "domain"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .local v0, "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-direct {p0, p1, v0}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z
    .locals 1
    .param p1, "domain"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {p0, v0, p1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z

    move-result v0

    return v0
.end method

.method public removePrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z
    .locals 8
    .param p1, "privilegedApp"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v5

    .local v5, "targetAlias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "targetPkg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .local v0, "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "preExistingPkg":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v0    # "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "preExistingPkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public serialize()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/ObjectOutput;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "out":Ljava/io/ObjectOutput;
    .local v3, "out":Ljava/io/ObjectOutput;
    :try_start_1
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v2, v3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "out":Ljava/io/ObjectOutput;
    .restart local v2    # "out":Ljava/io/ObjectOutput;
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/ObjectOutput;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutput;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ObjectOutput;
    .restart local v2    # "out":Ljava/io/ObjectOutput;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "SdpPolicy {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alias:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOwner:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .local v0, "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrivilegedApps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
