.class public Lcom/sec/android/app/camera/DimController;
.super Ljava/lang/Object;
.source "DimController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/DimController$DimArray;,
        Lcom/sec/android/app/camera/DimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_FOG_LEVEL:I = 0x1b

.field public static final CAMCORDER_ANTISHAKE:I = 0xf

.field public static final CAMCORDER_RESOLUTION:I = 0xc

.field public static final CAMERA_QUALITY:I = 0x11

.field public static final CAMERA_RESOLUTION:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/camera/DimController;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUAL_TRACK_RECORDING:I = 0x1d

.field public static final EFFECT:I = 0x2

.field public static final EXPOSURE_VALUE:I = 0x5

.field public static final FLASH_MODE:I = 0x4

.field public static final FLIP:I = 0xe

.field public static final FRONT_FLASH_MODE:I = 0x23

.field public static final GESTURE_CONTROL_MODE:I = 0x16

.field public static final GPS:I = 0x13

.field public static final GUIDELINE:I = 0xa

.field public static final HDR:I = 0x1

.field public static final HELP:I = 0x20

.field public static final HRM_SHUTTER:I = 0x22

.field public static final IMAGE_VIEWER:I = 0xb

.field public static final INTERVAL:I = 0x1f

.field public static final MANUAL_FOCUS:I = 0x18

.field public static final MOTION_PHOTO:I = 0x24

.field public static final MULTI_AF_MODE:I = 0x25

.field public static final NO_VALUE:I = -0x1

.field public static final NUM_OF_DIM_BUTTONS:I = 0x26

.field public static final OBJECT_TRACKING_AF:I = 0x17

.field public static final PICTURE_FORMAT:I = 0x1c

.field public static final QRCODE_DETECTION:I = 0x1e

.field public static final RESET:I = 0x19

.field public static final REVIEW:I = 0x8

.field public static final SAVE_RICHTONE:I = 0x10

.field public static final SETTINGS:I = 0x14

.field public static final SHUTTER_SOUND:I = 0xd

.field public static final STORAGE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "DimController"

.field public static final TAP_TO_TAKE_PICTURES:I = 0x21

.field public static final TIMER:I = 0x7

.field public static final VIEWMODE:I = 0x15

.field public static final VOICECOMMAND:I = 0x12

.field public static final VOLUME_KEY:I = 0x1a

.field public static final ZOOM:I = 0x3


# instance fields
.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/DimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedSynchronizeDim:Z

.field private mPreviousFlashValue:I

.field private mUserSettingValueList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/DimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/sec/android/app/camera/DimController$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/DimController$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/DimController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x26

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/camera/DimController;->mCheckSceneModeSet:Z

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/DimController;->mPreviousFlashValue:I

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    .line 104
    iput-object p1, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/DimController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/DimController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 777
    const/4 v0, -0x1

    .line 779
    .local v0, "key":I
    sparse-switch p1, :sswitch_data_0

    .line 877
    :goto_0
    return v0

    .line 782
    :sswitch_0
    const/4 v0, 0x4

    .line 783
    goto :goto_0

    .line 785
    :sswitch_1
    const/16 v0, 0x23

    .line 786
    goto :goto_0

    .line 788
    :sswitch_2
    const/4 v0, 0x6

    .line 789
    goto :goto_0

    .line 792
    :sswitch_3
    const/4 v0, 0x7

    .line 793
    goto :goto_0

    .line 795
    :sswitch_4
    const/16 v0, 0x8

    .line 796
    goto :goto_0

    .line 798
    :sswitch_5
    const/4 v0, 0x5

    .line 799
    goto :goto_0

    .line 802
    :sswitch_6
    const/4 v0, 0x2

    .line 803
    goto :goto_0

    .line 805
    :sswitch_7
    const/16 v0, 0x18

    .line 806
    goto :goto_0

    .line 808
    :sswitch_8
    const/4 v0, 0x1

    .line 809
    goto :goto_0

    .line 811
    :sswitch_9
    const/4 v0, 0x3

    .line 812
    goto :goto_0

    .line 814
    :sswitch_a
    const/16 v0, 0x1b

    .line 815
    goto :goto_0

    .line 817
    :sswitch_b
    const/16 v0, 0xa

    .line 818
    goto :goto_0

    .line 820
    :sswitch_c
    const/16 v0, 0x17

    .line 821
    goto :goto_0

    .line 823
    :sswitch_d
    const/16 v0, 0x9

    .line 824
    goto :goto_0

    .line 826
    :sswitch_e
    const/16 v0, 0xb

    .line 827
    goto :goto_0

    .line 829
    :sswitch_f
    const/16 v0, 0xc

    .line 830
    goto :goto_0

    .line 832
    :sswitch_10
    const/16 v0, 0xf

    .line 833
    goto :goto_0

    .line 835
    :sswitch_11
    const/16 v0, 0xe

    .line 836
    goto :goto_0

    .line 838
    :sswitch_12
    const/16 v0, 0x12

    .line 839
    goto :goto_0

    .line 841
    :sswitch_13
    const/16 v0, 0xd

    .line 842
    goto :goto_0

    .line 844
    :sswitch_14
    const/16 v0, 0x10

    .line 845
    goto :goto_0

    .line 847
    :sswitch_15
    const/16 v0, 0x13

    .line 848
    goto :goto_0

    .line 850
    :sswitch_16
    const/16 v0, 0x14

    .line 851
    goto :goto_0

    .line 853
    :sswitch_17
    const/16 v0, 0x15

    .line 854
    goto :goto_0

    .line 856
    :sswitch_18
    const/16 v0, 0x16

    .line 857
    goto :goto_0

    .line 859
    :sswitch_19
    const/16 v0, 0x1a

    .line 860
    goto :goto_0

    .line 862
    :sswitch_1a
    const/16 v0, 0x1c

    .line 863
    goto :goto_0

    .line 865
    :sswitch_1b
    const/16 v0, 0x1f

    .line 866
    goto :goto_0

    .line 868
    :sswitch_1c
    const/16 v0, 0x24

    .line 869
    goto :goto_0

    .line 871
    :sswitch_1d
    const/16 v0, 0x25

    .line 872
    goto :goto_0

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xc -> :sswitch_8
        0x11 -> :sswitch_4
        0x12 -> :sswitch_9
        0x13 -> :sswitch_b
        0x14 -> :sswitch_15
        0x15 -> :sswitch_13
        0x16 -> :sswitch_d
        0x17 -> :sswitch_17
        0x18 -> :sswitch_c
        0x1d -> :sswitch_e
        0x1e -> :sswitch_1c
        0x22 -> :sswitch_14
        0x33 -> :sswitch_11
        0x47 -> :sswitch_12
        0x48 -> :sswitch_19
        0x51 -> :sswitch_7
        0x54 -> :sswitch_18
        0x6c -> :sswitch_1b
        0x75 -> :sswitch_a
        0x78 -> :sswitch_16
        0x7f -> :sswitch_6
        0x86 -> :sswitch_1a
        0x91 -> :sswitch_1d
        0xaa -> :sswitch_1
        0xab -> :sswitch_3
        0xbb9 -> :sswitch_f
        0xbbf -> :sswitch_10
        0xbc4 -> :sswitch_0
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4
    .param p1, "array"    # [Z

    .prologue
    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x26

    if-ge v0, v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    :cond_0
    return-void
.end method

.method private varargs setSettingDefault([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 888
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    .line 889
    .local v1, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-nez v1, :cond_1

    .line 994
    :cond_0
    return-void

    .line 892
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 893
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 892
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    :pswitch_1
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v5, :cond_2

    .line 896
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    .line 900
    :pswitch_2
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v5, :cond_2

    .line 901
    :cond_3
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_1

    .line 905
    :pswitch_3
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    .line 908
    :pswitch_4
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    .line 911
    :pswitch_5
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 914
    :pswitch_6
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 917
    :pswitch_7
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_1

    .line 920
    :pswitch_8
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    .line 923
    :pswitch_9
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 924
    :cond_4
    sget v5, Lcom/sec/android/app/camera/feature/Feature;->DEFAULT_FRONT_CAMERA_VOICE_COMMAND:I

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto :goto_1

    .line 926
    :cond_5
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto :goto_1

    .line 930
    :pswitch_a
    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSaveRichTone(I)V

    goto :goto_1

    .line 933
    :pswitch_b
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 936
    :pswitch_c
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    .line 939
    :pswitch_d
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 942
    :pswitch_e
    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto :goto_1

    .line 945
    :pswitch_f
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraQuality(I)V

    goto :goto_1

    .line 948
    :pswitch_10
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_1

    .line 951
    :pswitch_11
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto :goto_1

    .line 954
    :pswitch_12
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto :goto_1

    .line 957
    :pswitch_13
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_1

    .line 960
    :pswitch_14
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto :goto_1

    .line 963
    :pswitch_15
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 966
    :pswitch_16
    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto :goto_1

    .line 969
    :pswitch_17
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto :goto_1

    .line 972
    :pswitch_18
    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto :goto_1

    .line 975
    :pswitch_19
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(I)V

    goto/16 :goto_1

    .line 978
    :pswitch_1a
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_1

    .line 981
    :pswitch_1b
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_1

    .line 984
    :pswitch_1c
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_1

    .line 987
    :pswitch_1d
    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_1

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_c
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_15
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_13
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private updateButtonDimState()V
    .locals 3

    .prologue
    .line 997
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x26

    if-ge v0, v2, :cond_0

    .line 998
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1002
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/DimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/DimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->merge([Z)V

    goto :goto_1

    .line 1006
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    .line 1008
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1015
    :cond_2
    :goto_2
    return-void

    .line 1012
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "button"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, -0x1

    .line 108
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v1, :cond_1

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getDim(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    const/16 v1, 0x26

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-void
.end method

.method public getSavedUserSettingValues(I)I
    .locals 2
    .param p1, "menuId"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 145
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 148
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    .line 154
    return-void
.end method

.method public declared-synchronized removeButton(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "button"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDim()V
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x26

    if-ge v0, v1, :cond_0

    .line 772
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/DimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/DimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 166
    return-void
.end method

.method public declared-synchronized setButtonDim(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 169
    monitor-enter p0

    :try_start_0
    const-string v2, "DimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonDim : menuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modeid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 172
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-nez v0, :cond_0

    .line 725
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/DimController$DimArray;

    .line 178
    .local v1, "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    if-eqz v1, :cond_1

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues(Z)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/DimController$DimArray;->getMenuId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "DimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolutionChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/DimController$DimArray;

    .end local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/DimController$DimArray;-><init>(Lcom/sec/android/app/camera/DimController;I)V

    .line 185
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 716
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isMicrophoneEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 717
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x12

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 718
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x12

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 719
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x12

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 722
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/camera/DimController;->updateButtonDimState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .end local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 187
    .restart local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :sswitch_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 188
    const/16 v2, 0x19

    if-lt p2, v2, :cond_4

    .line 189
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 190
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto :goto_1

    .line 193
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 194
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    goto :goto_1

    .line 200
    :sswitch_1
    if-nez p2, :cond_2

    .line 201
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 202
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 203
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 207
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    if-ne p2, v5, :cond_2

    .line 209
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 210
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 211
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 216
    :sswitch_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_6

    .line 217
    if-eqz p2, :cond_5

    .line 218
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 219
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 220
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 222
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 224
    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 229
    :cond_6
    if-eqz p2, :cond_2

    .line 230
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 231
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 232
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 237
    :sswitch_4
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_1

    .line 463
    :sswitch_5
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 464
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 465
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 467
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v2, :cond_2

    .line 468
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 469
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 470
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 239
    :sswitch_6
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 241
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 243
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 244
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FIXED_BURST_RESOLUTION:Z

    if-eqz v2, :cond_7

    .line 245
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 247
    :cond_7
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-eqz v2, :cond_2

    .line 248
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 252
    :sswitch_7
    const/16 v2, 0x13

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 255
    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 257
    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 259
    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 261
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 263
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 264
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 265
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    .line 270
    :sswitch_8
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 272
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 274
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 276
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 280
    :sswitch_9
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 282
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 283
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 285
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_2

    .line 286
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 287
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_8

    .line 288
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 290
    :cond_8
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_2

    .line 291
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    .line 296
    :sswitch_a
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 297
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 298
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 301
    :sswitch_b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 302
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 304
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 306
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 308
    :cond_9
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_18

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 310
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 311
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 315
    :sswitch_c
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 316
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 317
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 321
    :sswitch_d
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 322
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_1f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 323
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 326
    :sswitch_e
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_21

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 328
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 329
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_23

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 330
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 331
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto/16 :goto_1

    .line 334
    :sswitch_f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    .line 336
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_24

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 338
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_25

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 340
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 342
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v2, :cond_b

    .line 343
    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 344
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 345
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 348
    :cond_b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 349
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 353
    :sswitch_10
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 355
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 357
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 359
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 360
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 362
    :cond_c
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 366
    :sswitch_11
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_2a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 368
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_2b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 370
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 374
    :sswitch_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 375
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_2d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 376
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 378
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 380
    :cond_d
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 382
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_31

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 383
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_32

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 387
    :sswitch_13
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_33

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 389
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_34

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 390
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_35

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 394
    :sswitch_14
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_36

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 395
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_37

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 396
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_38

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 398
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 400
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_e

    .line 401
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 403
    :cond_e
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_2

    .line 404
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    .line 409
    :sswitch_15
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 410
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_39

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 412
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 414
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 425
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 418
    :cond_f
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 420
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_3d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 422
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto :goto_2

    .line 428
    :sswitch_16
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_3f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 430
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_40

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 432
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_41

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 434
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 437
    :sswitch_17
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 439
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_43

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 441
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_44

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 443
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 444
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    goto/16 :goto_1

    .line 448
    :sswitch_18
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_45

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 449
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_46

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 450
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_47

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 453
    :sswitch_19
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_48

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 455
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_49

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 457
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 459
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 460
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    goto/16 :goto_1

    .line 474
    :sswitch_1a
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_4b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 476
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_4c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 477
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_4d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 479
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto/16 :goto_1

    .line 482
    :sswitch_1b
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_4e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 483
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_4f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 484
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 486
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodLevel(I)V

    goto/16 :goto_1

    .line 490
    :sswitch_1c
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_51

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 492
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_52

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 494
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_53

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 497
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    goto/16 :goto_1

    .line 500
    :sswitch_1d
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_54

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 502
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_55

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 504
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_56

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 506
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 507
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    goto/16 :goto_1

    .line 514
    :sswitch_1e
    if-eqz p2, :cond_11

    .line 516
    iget-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mCheckSceneModeSet:Z

    if-nez v2, :cond_10

    .line 517
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mCheckSceneModeSet:Z

    .line 518
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/DimController;->mPreviousFlashValue:I

    .line 521
    :cond_10
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 530
    :pswitch_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_57

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 531
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_58

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 532
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 534
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 523
    :pswitch_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_59

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 524
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 525
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 527
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 540
    :cond_11
    iget-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mCheckSceneModeSet:Z

    if-eqz v2, :cond_2

    .line 541
    iget v2, p0, Lcom/sec/android/app/camera/DimController;->mPreviousFlashValue:I

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 542
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mCheckSceneModeSet:Z

    goto/16 :goto_1

    .line 547
    :sswitch_1f
    if-ne p2, v6, :cond_2

    .line 548
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 549
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 550
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 554
    :sswitch_20
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 555
    :cond_12
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 556
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 558
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->checkStorageLow(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 559
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 560
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 561
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 565
    :sswitch_21
    if-ne p2, v5, :cond_14

    .line 566
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_5b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 567
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 568
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_5d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 569
    :cond_14
    if-ne p2, v6, :cond_2

    .line 570
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_16

    .line 571
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_5e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 577
    :goto_3
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_5f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 579
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_60

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 582
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 583
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 586
    :cond_15
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 587
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 574
    :cond_16
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_61

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto :goto_3

    .line 591
    :sswitch_22
    if-nez p2, :cond_2

    .line 592
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 593
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 597
    :sswitch_23
    const/16 v2, 0x28

    if-eq p2, v2, :cond_17

    const/16 v2, 0xb

    if-eq p2, v2, :cond_17

    const/16 v2, 0x34

    if-eq p2, v2, :cond_17

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x15

    if-ne p2, v2, :cond_2

    .line 599
    :cond_17
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 600
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 601
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 605
    :sswitch_24
    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isNormalResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    :cond_18
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 607
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 611
    :sswitch_25
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 612
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 613
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 614
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 618
    :sswitch_26
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 619
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_62

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 620
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 621
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 625
    :sswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne p2, v2, :cond_1a

    .line 626
    :cond_19
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 627
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 628
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 630
    :cond_1a
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 631
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 632
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 636
    :sswitch_28
    if-ne p2, v5, :cond_2

    .line 637
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 638
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 639
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 643
    :sswitch_29
    if-ne p2, v5, :cond_2

    .line 644
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 645
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 646
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 650
    :sswitch_2a
    if-eqz p2, :cond_2

    .line 651
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_63

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 652
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 653
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 658
    :sswitch_2b
    if-ne p2, v5, :cond_2

    .line 659
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 660
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 661
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 667
    :sswitch_2c
    if-ne p2, v5, :cond_2

    .line 668
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 669
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_67

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 670
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 671
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 675
    :sswitch_2d
    if-ne p2, v5, :cond_2

    .line 676
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_68

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 677
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_69

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 678
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_6a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 682
    :sswitch_2e
    if-ne p2, v5, :cond_2

    .line 683
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_6b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 684
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_6c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 685
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_6d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 689
    :sswitch_2f
    if-ne p2, v5, :cond_2

    .line 690
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1a

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 694
    :sswitch_30
    if-eq p2, v5, :cond_1b

    if-eq p2, v6, :cond_1b

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 696
    :cond_1b
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_6e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 697
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 698
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_6f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 702
    :sswitch_31
    if-ne p2, v5, :cond_2

    .line 703
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 707
    :sswitch_32
    if-ne p2, v5, :cond_2

    .line 708
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_4
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_24
        0x5 -> :sswitch_25
        0x8 -> :sswitch_3
        0xc -> :sswitch_1f
        0xe -> :sswitch_2a
        0x16 -> :sswitch_20
        0x17 -> :sswitch_29
        0x18 -> :sswitch_26
        0x1d -> :sswitch_22
        0x1f -> :sswitch_0
        0x24 -> :sswitch_27
        0x26 -> :sswitch_28
        0x7f -> :sswitch_2
        0x80 -> :sswitch_1
        0x83 -> :sswitch_30
        0x12c -> :sswitch_2b
        0x136 -> :sswitch_2c
        0x137 -> :sswitch_2d
        0x13d -> :sswitch_31
        0x13f -> :sswitch_32
        0xbb9 -> :sswitch_23
        0x1770 -> :sswitch_2f
        0x1b58 -> :sswitch_2e
    .end sparse-switch

    .line 189
    :array_0
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 218
    :array_2
    .array-data 4
        0xf
        0x16
        0x24
    .end array-data

    .line 219
    :array_3
    .array-data 4
        0xf
        0x16
        0x24
    .end array-data

    .line 220
    :array_4
    .array-data 4
        0xf
        0x16
        0x24
    .end array-data

    .line 237
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_8
        0x7 -> :sswitch_9
        0xe -> :sswitch_a
        0x17 -> :sswitch_b
        0x23 -> :sswitch_f
        0x27 -> :sswitch_c
        0x28 -> :sswitch_d
        0x2a -> :sswitch_e
        0x2d -> :sswitch_12
        0x2e -> :sswitch_10
        0x2f -> :sswitch_11
        0x31 -> :sswitch_1a
        0x34 -> :sswitch_15
        0x37 -> :sswitch_14
        0x38 -> :sswitch_13
        0x3a -> :sswitch_7
        0x3b -> :sswitch_18
        0x3e -> :sswitch_16
        0x3f -> :sswitch_17
        0x40 -> :sswitch_19
        0x43 -> :sswitch_1c
        0x44 -> :sswitch_1b
        0x48 -> :sswitch_8
        0x4a -> :sswitch_1d
        0x4b -> :sswitch_18
    .end sparse-switch

    .line 463
    :array_5
    .array-data 4
        0x10
        0x1c
    .end array-data

    .line 239
    :array_6
    .array-data 4
        0x1
        0x4
        0x17
        0x6
        0x10
        0x17
        0x1c
        0x1e
        0x1f
        0x24
        0x7
    .end array-data

    .line 241
    :array_7
    .array-data 4
        0x1
        0x4
        0x17
        0x6
        0x11
        0x17
        0x1c
        0x1e
        0x1f
        0x24
        0x7
    .end array-data

    .line 243
    :array_8
    .array-data 4
        0x1
        0x4
        0x17
        0x1c
        0x1e
        0x1f
        0x24
        0x7
    .end array-data

    .line 252
    :array_9
    .array-data 4
        0x1
        0x2
        0x12
        0x17
        0x4
        0x23
        0x7
        0x9
        0x10
        0x16
        0x8
        0x13
        0x1c
        0x1e
        0x1f
        0x6
        0x21
        0x22
        0x24
    .end array-data

    .line 255
    :array_a
    .array-data 4
        0x1
        0x12
        0x17
        0x4
        0x23
        0x7
        0x9
        0x16
        0x8
        0x13
        0x1c
        0x1e
        0x1f
        0x6
        0x21
        0x22
        0x24
    .end array-data

    .line 257
    :array_b
    .array-data 4
        0x1
        0x17
        0x4
        0x23
        0x12
        0x7
        0x9
        0x16
        0x8
        0x13
        0x1c
        0x1e
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 270
    :array_c
    .array-data 4
        0x1
        0x2
        0x3
        0x17
        0x4
        0x6
        0x7
        0x10
        0x8
        0x15
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 272
    :array_d
    .array-data 4
        0x1
        0x3
        0x17
        0x4
        0x6
        0x7
        0x8
        0x15
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 274
    :array_e
    .array-data 4
        0x1
        0x3
        0x17
        0x4
        0x7
        0x8
        0x15
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 280
    :array_f
    .array-data 4
        0x1
        0x2
        0x17
        0x4
        0x23
        0x10
        0x1c
        0x1e
        0x24
    .end array-data

    .line 282
    :array_10
    .array-data 4
        0x1
        0x17
        0x4
        0x23
        0x1c
        0x1e
        0x24
    .end array-data

    .line 283
    :array_11
    .array-data 4
        0x1
        0x17
        0x4
        0x23
        0x1c
        0x1e
        0x24
    .end array-data

    .line 296
    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x17
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 297
    :array_13
    .array-data 4
        0x1
        0x4
        0x17
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 298
    :array_14
    .array-data 4
        0x1
        0x4
        0x17
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 302
    :array_15
    .array-data 4
        0x1
        0x2
        0x17
        0x4
        0x23
        0x10
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 304
    :array_16
    .array-data 4
        0x1
        0x17
        0x4
        0x23
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 306
    :array_17
    .array-data 4
        0x1
        0x17
        0x4
        0x23
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 308
    :array_18
    .array-data 4
        0x1
        0x2
        0x17
        0x4
        0x10
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 310
    :array_19
    .array-data 4
        0x1
        0x17
        0x4
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 311
    :array_1a
    .array-data 4
        0x1
        0x17
        0x4
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 315
    :array_1b
    .array-data 4
        0x1
        0x2
        0x4
        0x17
        0x1c
        0x1e
        0x24
    .end array-data

    .line 316
    :array_1c
    .array-data 4
        0x1
        0x4
        0x17
        0x1c
        0x1e
        0x24
    .end array-data

    .line 317
    :array_1d
    .array-data 4
        0x1
        0x17
        0x4
        0x1c
        0x1e
        0x24
    .end array-data

    .line 321
    :array_1e
    .array-data 4
        0x1
        0x2
        0x4
        0x10
        0x1c
        0x1e
        0x24
    .end array-data

    .line 322
    :array_1f
    .array-data 4
        0x1
        0x4
        0x1c
        0x1e
        0x24
    .end array-data

    .line 323
    :array_20
    .array-data 4
        0x1
        0x4
        0x1c
        0x1e
        0x24
    .end array-data

    .line 326
    :array_21
    .array-data 4
        0x1
        0x2
        0x4
        0x17
        0x10
        0x1a
        0x1c
        0x1e
        0x24
    .end array-data

    .line 328
    :array_22
    .array-data 4
        0x1
        0x4
        0x17
        0x1a
        0x1c
        0x1e
        0x24
    .end array-data

    .line 329
    :array_23
    .array-data 4
        0x1
        0x17
        0x1c
        0x1e
        0x24
    .end array-data

    .line 336
    :array_24
    .array-data 4
        0x2
        0xd
        0x12
        0x7
        0x23
        0x10
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 338
    :array_25
    .array-data 4
        0xd
        0x12
        0x7
        0x23
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 340
    :array_26
    .array-data 4
        0x12
        0x7
        0x23
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 353
    :array_27
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x23
        0x17
        0x7
        0x6
        0x10
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 355
    :array_28
    .array-data 4
        0x1
        0x3
        0x4
        0x23
        0x17
        0x7
        0x6
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 357
    :array_29
    .array-data 4
        0x1
        0x3
        0x23
        0x17
        0x7
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 366
    :array_2a
    .array-data 4
        0x1
        0x2
        0x23
        0x17
        0xf
        0xe
        0x10
        0x8
        0x16
        0x1c
        0x1e
        0x22
        0x24
    .end array-data

    .line 368
    :array_2b
    .array-data 4
        0x1
        0x23
        0x17
        0xf
        0xe
        0x8
        0x16
        0x1c
        0x1e
        0x22
        0x24
    .end array-data

    .line 370
    :array_2c
    .array-data 4
        0x1
        0x2
        0x23
        0x17
        0xf
        0xe
        0x8
        0x16
        0x1c
        0x1e
        0x22
        0x24
    .end array-data

    .line 375
    :array_2d
    .array-data 4
        0x2
        0x17
        0x4
        0x23
        0x10
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 376
    :array_2e
    .array-data 4
        0x17
        0x4
        0x23
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 378
    :array_2f
    .array-data 4
        0x17
        0x4
        0x23
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 380
    :array_30
    .array-data 4
        0x3
        0x2
        0x17
        0x4
        0x10
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 382
    :array_31
    .array-data 4
        0x3
        0x17
        0x4
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 383
    :array_32
    .array-data 4
        0x3
        0x17
        0x4
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 387
    :array_33
    .array-data 4
        0x1
        0x2
        0x4
        0x17
        0x10
        0x7
        0x3
        0x12
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 389
    :array_34
    .array-data 4
        0x1
        0x4
        0x17
        0x7
        0x3
        0x12
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 390
    :array_35
    .array-data 4
        0x1
        0x4
        0x17
        0x7
        0x3
        0x12
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 394
    :array_36
    .array-data 4
        0x17
        0x10
        0x1c
        0x1e
        0x3
    .end array-data

    .line 395
    :array_37
    .array-data 4
        0x17
        0x1c
        0x1e
        0x3
    .end array-data

    .line 396
    :array_38
    .array-data 4
        0x17
        0x1c
        0x1e
        0x3
    .end array-data

    .line 410
    :array_39
    .array-data 4
        0x1
        0x2
        0x4
        0x23
        0x17
        0x6
        0x10
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 412
    :array_3a
    .array-data 4
        0x1
        0x4
        0x23
        0x17
        0x6
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 414
    :array_3b
    .array-data 4
        0x1
        0x4
        0x23
        0x17
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 418
    :array_3c
    .array-data 4
        0x1
        0x2
        0x4
        0x23
        0x17
        0x6
        0x10
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 420
    :array_3d
    .array-data 4
        0x1
        0x4
        0x23
        0x17
        0x6
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 422
    :array_3e
    .array-data 4
        0x1
        0x4
        0x23
        0x17
        0x1c
        0x1e
        0x1f
        0x3
        0x24
    .end array-data

    .line 428
    :array_3f
    .array-data 4
        0x1
        0x2
        0x4
        0x23
        0x3
        0x17
        0x7
        0x6
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 430
    :array_40
    .array-data 4
        0x1
        0x4
        0x23
        0x3
        0x17
        0x7
        0x6
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 432
    :array_41
    .array-data 4
        0x1
        0x4
        0x23
        0x3
        0x17
        0x7
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 437
    :array_42
    .array-data 4
        0x1
        0x2
        0x17
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 439
    :array_43
    .array-data 4
        0x1
        0x17
        0x6
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 441
    :array_44
    .array-data 4
        0x1
        0x17
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 448
    :array_45
    .array-data 4
        0x1
        0x1e
        0x24
    .end array-data

    .line 449
    :array_46
    .array-data 4
        0x1
        0x1e
        0x24
    .end array-data

    .line 450
    :array_47
    .array-data 4
        0x1
        0x1e
        0x24
    .end array-data

    .line 453
    :array_48
    .array-data 4
        0x1
        0x2
        0x17
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 455
    :array_49
    .array-data 4
        0x1
        0x17
        0x6
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 457
    :array_4a
    .array-data 4
        0x1
        0x17
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 474
    :array_4b
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x17
        0x10
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 476
    :array_4c
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x17
        0x10
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 477
    :array_4d
    .array-data 4
        0x1
        0x3
        0x4
        0x17
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 482
    :array_4e
    .array-data 4
        0x1
        0x7
        0x1f
        0x2
        0x4
        0x17
        0x10
        0x1c
        0x1e
        0x24
    .end array-data

    .line 483
    :array_4f
    .array-data 4
        0x1
        0x7
        0x1f
        0x2
        0x4
        0x17
        0x10
        0x1c
        0x1e
        0x24
    .end array-data

    .line 484
    :array_50
    .array-data 4
        0x1
        0x7
        0x1f
        0x4
        0x17
        0x1c
        0x1e
        0x24
    .end array-data

    .line 490
    :array_51
    .array-data 4
        0x17
        0x7
        0x23
        0x6
        0xc
        0xf
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 492
    :array_52
    .array-data 4
        0x17
        0x7
        0x23
        0x6
        0xf
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 494
    :array_53
    .array-data 4
        0x17
        0x7
        0x23
        0xf
        0x8
        0x16
        0x1c
        0x1e
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 500
    :array_54
    .array-data 4
        0x1
        0x2
        0x17
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 502
    :array_55
    .array-data 4
        0x1
        0x17
        0x6
        0xf
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0x24
    .end array-data

    .line 504
    :array_56
    .array-data 4
        0x1
        0x17
        0x3
        0x8
        0x1c
        0x1e
        0x1f
        0xf
        0x24
    .end array-data

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 530
    :array_57
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 531
    :array_58
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 523
    :array_59
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 524
    :array_5a
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 566
    :array_5b
    .array-data 4
        0xc
        0xf
        0x8
        0x17
        0x19
        0x1f
        0x1c
        0x24
    .end array-data

    .line 567
    :array_5c
    .array-data 4
        0xc
        0xf
        0x8
        0x17
        0x1f
        0x1c
        0x24
    .end array-data

    .line 568
    :array_5d
    .array-data 4
        0x8
        0x17
        0x1f
        0xf
        0x1c
        0x24
    .end array-data

    .line 571
    :array_5e
    .array-data 4
        0x6
        0xf
        0x2
        0x16
        0x8
        0x17
        0x19
        0x1c
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 577
    :array_5f
    .array-data 4
        0xf
        0x16
        0x8
        0x17
        0x1c
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 579
    :array_60
    .array-data 4
        0xf
        0x16
        0x8
        0x17
        0x1c
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 574
    :array_61
    .array-data 4
        0x6
        0xf
        0x16
        0x8
        0x17
        0x19
        0x1c
        0x1f
        0x21
        0x22
        0x24
    .end array-data

    .line 619
    :array_62
    .array-data 4
        0x25
        0x17
    .end array-data

    .line 651
    :array_63
    .array-data 4
        0xf
        0x1c
    .end array-data

    .line 652
    :array_64
    .array-data 4
        0xf
        0x1c
    .end array-data

    .line 653
    :array_65
    .array-data 4
        0xf
        0x1c
    .end array-data

    .line 668
    :array_66
    .array-data 4
        0xd
        0x12
    .end array-data

    .line 669
    :array_67
    .array-data 4
        0xd
        0x12
    .end array-data

    .line 676
    :array_68
    .array-data 4
        0x13
        0xa
        0x1
        0x12
        0x8
        0x7
        0x1f
        0x17
        0x24
    .end array-data

    .line 677
    :array_69
    .array-data 4
        0x13
        0xa
        0x1
        0x12
        0x8
        0x7
        0x1f
        0x17
        0x24
    .end array-data

    .line 678
    :array_6a
    .array-data 4
        0x13
        0xa
        0x1
        0x12
        0x8
        0x7
        0x1f
        0x17
        0x24
    .end array-data

    .line 683
    :array_6b
    .array-data 4
        0x2
        0x12
        0x13
        0x24
    .end array-data

    .line 684
    :array_6c
    .array-data 4
        0x2
        0x12
        0x13
        0x24
    .end array-data

    .line 685
    :array_6d
    .array-data 4
        0x2
        0x12
        0x13
        0x24
    .end array-data

    .line 696
    :array_6e
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 698
    :array_6f
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public declared-synchronized setDim(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 728
    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :cond_0
    monitor-exit p0

    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    const/16 v1, 0x26

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    return-void
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 761
    :goto_0
    monitor-exit p0

    return-void

    .line 742
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x26

    if-ge v1, v4, :cond_4

    .line 743
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 744
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    instance-of v4, v3, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v4, :cond_2

    .line 745
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 746
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 747
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 738
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 751
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 752
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 753
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    goto :goto_2

    .line 742
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 760
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 765
    return-void
.end method
