.class public Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeFeatureProviderImpl"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    .prologue
    .line 159
    const-string v3, "ShootingModeFeatureProviderImpl"

    const-string v4, "clearInactiveShootingModeFeature"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 161
    .local v2, "shootingModeFeatureListclone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;>;"
    const/4 v1, 0x0

    .line 162
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 163
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method private declared-synchronized loadShootingModeFeature(I)V
    .locals 5
    .param p1, "shootingModeId"    # I

    .prologue
    .line 176
    monitor-enter p0

    const/4 v0, 0x0

    .line 177
    .local v0, "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    sparse-switch p1, :sswitch_data_0

    .line 267
    :try_start_0
    const-string v2, "ShootingModeFeatureProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong shooting mode id, Failed! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :sswitch_0
    :try_start_1
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/AnimatedGifFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/AnimatedGifFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .local v1, "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 270
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    :sswitch_1
    :try_start_2
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/AntiFogFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/AntiFogFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 183
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 185
    :sswitch_2
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/AquaFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/AquaFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 186
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 188
    :sswitch_3
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/AutoFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/AutoFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 189
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 191
    :sswitch_4
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/BeautyFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/BeautyFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 192
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 194
    :sswitch_5
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/BurstPanoramaFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/BurstPanoramaFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 195
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 197
    :sswitch_6
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 198
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 200
    :sswitch_7
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/DualFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/DualFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 201
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 203
    :sswitch_8
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/EnvironmentFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/EnvironmentFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 204
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 206
    :sswitch_9
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/FastMotionFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/FastMotionFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 207
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 209
    :sswitch_a
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/FoodFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/FoodFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 210
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 212
    :sswitch_b
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/HyperMotionFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/HyperMotionFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 213
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 215
    :sswitch_c
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/MotionPanoramaFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/MotionPanoramaFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 216
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 218
    :sswitch_d
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/NightFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/NightFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 219
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 221
    :sswitch_e
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/NightSceneFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/NightSceneFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 222
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 224
    :sswitch_f
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/ProFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/ProFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 225
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 227
    :sswitch_10
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/ProLiteFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/ProLiteFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 228
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 230
    :sswitch_11
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/RearSelfieFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/RearSelfieFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 231
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 233
    :sswitch_12
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 234
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 236
    :sswitch_13
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/RichToneFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/RichToneFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 237
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 239
    :sswitch_14
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/SelectiveFocusFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/SelectiveFocusFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 240
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 242
    :sswitch_15
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/SelfieFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/SelfieFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 243
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 245
    :sswitch_16
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/ShotAndMoreFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/ShotAndMoreFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 246
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 248
    :sswitch_17
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/SlowMotionFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/SlowMotionFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 249
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 251
    :sswitch_18
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/SoundAndShotFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/SoundAndShotFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 252
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 254
    :sswitch_19
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/SportsFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/SportsFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 255
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 257
    :sswitch_1a
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/VideoCollageFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/VideoCollageFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 258
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 260
    :sswitch_1b
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/VirtualShotFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/VirtualShotFeature;-><init>()V

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 261
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 263
    :sswitch_1c
    new-instance v1, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieFeature;

    invoke-direct {v1}, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieFeature;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    move-object v0, v1

    .line 264
    .end local v1    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_12
        0x7 -> :sswitch_4
        0xe -> :sswitch_13
        0x17 -> :sswitch_d
        0x23 -> :sswitch_18
        0x27 -> :sswitch_e
        0x28 -> :sswitch_19
        0x2a -> :sswitch_2
        0x2d -> :sswitch_14
        0x2e -> :sswitch_16
        0x2f -> :sswitch_7
        0x31 -> :sswitch_1
        0x34 -> :sswitch_1c
        0x37 -> :sswitch_15
        0x38 -> :sswitch_11
        0x3a -> :sswitch_0
        0x3b -> :sswitch_f
        0x3e -> :sswitch_1b
        0x3f -> :sswitch_17
        0x40 -> :sswitch_9
        0x42 -> :sswitch_8
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_a
        0x48 -> :sswitch_c
        0x4a -> :sswitch_b
        0x4b -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public getFixedBackCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFrontCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousAFSupported()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isContinuousAFSupported()Z

    move-result v0

    return v0
.end method

.method public isDivideAFAESupported()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v0

    return v0
.end method

.method public isExternalMemorySupported()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isExternalMemorySupported()Z

    move-result v0

    return v0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isGestureControlSupported()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isGestureControlSupported()Z

    move-result v0

    return v0
.end method

.method public isHandlingAudioFocus()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHandlingAudioFocus()Z

    move-result v0

    return v0
.end method

.method public isLowLightDetectionSupported()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isMultiInstanceCameraSupported()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAEAWB()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAEAWB()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAWB()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAWB()Z

    move-result v0

    return v0
.end method

.method public isObjectTrackingSupported()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    return v0
.end method

.method public isSuperResolutionZoomSupported()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSuperResolutionZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAESupported()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAFSupported()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAFSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchEVSupported()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchEVSupported()Z

    move-result v0

    return v0
.end method

.method public isUsingCamcorderPreviewOnly()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v0

    return v0
.end method

.method public isUsingThumbnailPictureCallback()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingThumbnailPictureCallback()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    .line 142
    return-void
.end method

.method public declared-synchronized setShootingMode(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    .line 147
    const-string v1, "ShootingModeFeatureProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 149
    .local v0, "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->loadShootingModeFeature(I)V

    .line 154
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :cond_0
    monitor-exit p0

    return-void

    .line 152
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
