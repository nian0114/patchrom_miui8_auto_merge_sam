.class public Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
.super Ljava/lang/Object;
.source "CameraResolutionListLoader.java"


# static fields
.field public static final LIST_TYPE:I = 0x0

.field public static final SPINNER_TYPE:I = 0x1

.field private static mInstance:Lcom/sec/android/app/camera/util/CameraResolutionListLoader;


# instance fields
.field private mBackVideoIds:[I

.field private mBackVideoList:[Ljava/lang/String;

.field private mBackVideoSubList:[Ljava/lang/String;

.field private mDualBackVideoIds:[I

.field private mDualBackVideoList:[Ljava/lang/String;

.field private mDualBackVideoSubList:[Ljava/lang/String;

.field private mDualFrontVideoIds:[I

.field private mDualFrontVideoList:[Ljava/lang/String;

.field private mDualFrontVideoSubList:[Ljava/lang/String;

.field private mFrontVideoIds:[I

.field private mFrontVideoList:[Ljava/lang/String;

.field private mFrontVideoSubList:[Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mInstance:Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mType:I

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    .line 35
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoList:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoSubList:[Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoList:[Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoSubList:[Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoList:[Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoSubList:[Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoList:[Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoSubList:[Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->init()V

    .line 49
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mInstance:Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mInstance:Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    .line 58
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mInstance:Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolutionId"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mType:I

    if-nez v0, :cond_0

    .line 123
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const/16 v11, 0x12

    const/16 v10, 0xf

    const/16 v9, 0xe

    const/16 v8, 0xd

    const/16 v7, 0xb

    .line 130
    iget-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    if-nez v5, :cond_a

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "backIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160:Z

    if-eqz v5, :cond_0

    .line 133
    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440:Z

    if-eqz v5, :cond_1

    .line 136
    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS:Z

    if-eqz v5, :cond_2

    .line 139
    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080:Z

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1080:Z

    if-eqz v5, :cond_4

    .line 145
    const/16 v5, 0x1f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440:Z

    if-eqz v5, :cond_5

    .line 148
    const/16 v5, 0x34

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_5
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720:Z

    if-eqz v5, :cond_6

    .line 151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_6
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480:Z

    if-eqz v5, :cond_7

    .line 154
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_7
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480:Z

    if-eqz v5, :cond_8

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_8
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240:Z

    if-eqz v5, :cond_9

    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    .line 163
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 164
    iget-object v6, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v4

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "backIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    if-nez v5, :cond_12

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, "frontIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440:Z

    if-eqz v5, :cond_b

    .line 171
    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_b
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080:Z

    if-eqz v5, :cond_c

    .line 174
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_c
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440:Z

    if-eqz v5, :cond_d

    .line 177
    const/16 v5, 0x34

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_d
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720:Z

    if-eqz v5, :cond_e

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_e
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480:Z

    if-eqz v5, :cond_f

    .line 183
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_f
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480:Z

    if-eqz v5, :cond_10

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_10
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240:Z

    if-eqz v5, :cond_11

    .line 189
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    .line 192
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    .line 193
    iget-object v6, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v4

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v3    # "frontIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    if-nez v5, :cond_16

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "dualBackIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080:Z

    if-eqz v5, :cond_13

    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_13
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720:Z

    if-eqz v5, :cond_14

    .line 203
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_14
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480:Z

    if-eqz v5, :cond_15

    .line 206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    .line 209
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 210
    iget-object v6, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v4

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 214
    .end local v1    # "dualBackIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_16
    iget-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    if-nez v5, :cond_1a

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "dualFrontIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080:Z

    if-eqz v5, :cond_17

    .line 218
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_17
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720:Z

    if-eqz v5, :cond_18

    .line 221
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_18
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480:Z

    if-eqz v5, :cond_19

    .line 224
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    .line 227
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 228
    iget-object v6, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 232
    .end local v2    # "dualFrontIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_1a
    iget-object v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    array-length v5, v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1b

    const/4 v5, 0x0

    :goto_4
    iput v5, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mType:I

    .line 233
    return-void

    .line 232
    :cond_1b
    const/4 v5, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getBackVideoIdList()[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    return-object v0
.end method

.method public getBackVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoList:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoIds:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mBackVideoList:[Ljava/lang/String;

    return-object v1
.end method

.method public getDualBackVideoIdList()[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    return-object v0
.end method

.method public getDualBackVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoList:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoIds:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualBackVideoList:[Ljava/lang/String;

    return-object v1
.end method

.method public getDualFrontVideoIdList()[I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    return-object v0
.end method

.method public getDualFrontVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoList:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoIds:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mDualFrontVideoList:[Ljava/lang/String;

    return-object v1
.end method

.method public getFrontVideoSizeIdList()[I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    return-object v0
.end method

.method public getFrontVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoList:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoIds:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mFrontVideoList:[Ljava/lang/String;

    return-object v1
.end method

.method public getVideoSizeListType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->mType:I

    return v0
.end method
