.class public Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "VideoCollageTypeResourceData.java"


# instance fields
.field private mCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 31
    const/16 v4, 0x83

    const v5, 0x7f0800a4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->initCommandIdList()V

    .line 35
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "commandId":I
    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 37
    .local v3, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/16 v4, 0x8

    new-array v4, v4, [I

    iget v5, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v4, v7

    const/4 v5, 0x1

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v1, v4, v5

    const/4 v5, 0x4

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v7, v4, v5

    const/4 v5, 0x7

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    aput v6, v4, v5

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 38
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v1    # "commandId":I
    .end local v3    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1838

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1839

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x183a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1842

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1843

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x184c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x184d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x184e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x184f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1856

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1857

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1858

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1859

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    return-void
.end method
