.class public Landroid/os/DssHelper;
.super Ljava/lang/Object;
.source "DssHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DssHelper$DssAppDate;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DssHelper"

.field private static mInstance:Landroid/os/DssHelper;


# instance fields
.field private final DEFAULT_CPU_LEVEL:I

.field private final DEFAULT_FACTOR:F

.field private final DEFAULT_GAME_SIOP_LEVEL:I

.field private final DEFAULT_GPU_LEVEL:I

.field mWhiteAdssList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field

.field mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 35
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_CPU_LEVEL:I

    .line 36
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_GPU_LEVEL:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    .line 176
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_FACTOR:F

    .line 75
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/DssHelper;
    .locals 2

    .prologue
    .line 80
    const-class v1, Landroid/os/DssHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/os/DssHelper;

    invoke-direct {v0}, Landroid/os/DssHelper;-><init>()V

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    .line 83
    :cond_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addAdssPackageByTransact(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 108
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    .line 109
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 107
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackage(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 91
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageByTransact(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 99
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 148
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    .line 149
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevel"    # I

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 154
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2, p3}, Landroid/os/DssHelper$DssAppDate;->addPackage(FI)V

    .line 155
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevels"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 160
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2, p3}, Landroid/os/DssHelper$DssAppDate;->addPackage(FLjava/lang/String;)V

    .line 161
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 159
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized applySetFixedSize(Ljava/lang/String;Landroid/view/SurfaceView;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v4, 0x0

    .line 198
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)F

    move-result v1

    .line 201
    .local v1, "resolutionFactorf":F
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 202
    .local v2, "width":F
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 204
    .local v0, "height":F
    mul-float/2addr v2, v1

    .line 205
    mul-float/2addr v0, v1

    .line 207
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    float-to-int v4, v2

    float-to-int v5, v0

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v0    # "height":F
    .end local v1    # "resolutionFactorf":F
    .end local v2    # "width":F
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 131
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 140
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 143
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "0,0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactor()F
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    const/high16 v0, 0x3f000000    # 0.5f

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 185
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    .line 187
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 189
    .restart local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactorAdss(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_0
    monitor-exit p0

    return v0

    .line 219
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWhiteList()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 242
    .local v2, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 243
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f400000    # 0.75f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    :cond_2
    const-string v6, "DSS 0.5 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v6, "DSS 0.75 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 260
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 263
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    return-object v5
.end method

.method public declared-synchronized isAdss(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x0

    .line 114
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const/4 v0, 0x1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 116
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAdssPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllDSSInfo()V
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    const-string v3, "DssHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSS PackageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  Scale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mScale:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", GameSiopLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", CpuLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", GpuLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 233
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
