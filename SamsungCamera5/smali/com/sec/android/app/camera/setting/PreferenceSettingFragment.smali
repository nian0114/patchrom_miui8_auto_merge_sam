.class public Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSettingFragment.java"


# static fields
.field private static final CAMERA_DIM:Ljava/lang/String; = "camera"

.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field protected static final LIST_KEY_FOR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution"

.field protected static final LIST_KEY_FOR_SHOOTING_METHOD:Ljava/lang/String; = "shooting_method"

.field private static final PREFERENCE_RES_ID:Ljava/lang/String; = "preference_res_id"

.field protected static final SPINNER_KEY_FOR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution_spinner"

.field private static final TAG:Ljava/lang/String; = "PreferenceSettingFragment"

.field private static mDimHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDimArray:[Z

.field private mIsFromSystemSetting:Z

.field private mIsInitialized:Z

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mPreferenceResId:I

.field private mStoragePreference:Landroid/preference/Preference;

.field private onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    .line 96
    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method private getDim(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 344
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    aget-boolean v0, v0, p1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()Z
    .locals 19

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    if-nez v14, :cond_32

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    const v15, 0x7f0801cd

    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setTitle(I)V

    .line 356
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-eqz v14, :cond_2e

    .line 357
    const v14, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    .line 367
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    move-result-object v5

    .line 368
    .local v5, "loader":Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getVideoSizeListType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_37

    .line 369
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-nez v14, :cond_2

    .line 370
    const/4 v10, 0x0

    .line 371
    .local v10, "videoSizeList":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 373
    .local v11, "videoSizeValue":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-eqz v14, :cond_33

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 375
    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v11

    .line 386
    :cond_1
    :goto_1
    const-string v14, "camcorder_resolution_spinner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 387
    .local v9, "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    if-eqz v9, :cond_2

    .line 388
    array-length v14, v10

    const/4 v15, 0x1

    if-ne v14, v15, :cond_36

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    .end local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .end local v10    # "videoSizeList":[Ljava/lang/String;
    .end local v11    # "videoSizeValue":[I
    :cond_2
    :goto_2
    const-string v14, "camcorder_resolution"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "camcorder_resolution"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_3
    :goto_3
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MOTION_PHOTO:Z

    if-nez v14, :cond_4

    .line 407
    const-string v14, "pref_global_motion_photo_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_motion_photo_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    :cond_4
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-nez v14, :cond_5

    .line 412
    const-string v14, "pref_global_setup_object_trackingaf_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_setup_object_trackingaf_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    :cond_5
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-nez v14, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 418
    :cond_6
    const-string v14, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    :cond_7
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v14, :cond_9

    .line 424
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 425
    :cond_8
    const-string v14, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 431
    const-string v14, "pref_global_camera_shutter_sound_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camera_shutter_sound_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_a
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v14, :cond_b

    .line 436
    const-string v14, "pref_global_camera_fullpreview_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camera_fullpreview_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_b
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-nez v14, :cond_c

    .line 441
    const-string v14, "pref_global_camera_picture_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camera_picture_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_c
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLensDistortionFeature()Z

    move-result v14

    if-nez v14, :cond_e

    .line 446
    :cond_d
    const-string v14, "pref_global_rear_lens_distortion_correction_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_rear_lens_distortion_correction_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    :cond_e
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-nez v14, :cond_f

    .line 451
    const-string v14, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    :cond_f
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-nez v14, :cond_12

    .line 456
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 457
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "shooting_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_11
    const-string v14, "pref_global_setup_voice_control_front_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_12

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_global_setup_voice_control_front_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :cond_12
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->HEART_RATE_SENSOR:Z

    if-nez v14, :cond_13

    .line 464
    const-string v14, "pref_camera_hrm_shutter_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_camera_hrm_shutter_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_13
    const-string v14, "pref_global_setup_storage_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    if-eqz v14, :cond_15

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 471
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v14, :cond_14

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v14

    if-nez v14, :cond_15

    .line 472
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 476
    const-string v14, "pref_camera_qrcode_detection"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_camera_qrcode_detection"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :cond_16
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-nez v14, :cond_17

    .line 481
    const-string v14, "pref_camera_focus_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_17

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "pref_camera_focus_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 486
    :cond_17
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->ACTIVE_KEY:Z

    if-eqz v14, :cond_18

    .line 487
    const/4 v12, 0x0

    .line 488
    .local v12, "volumeKeyList":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 489
    .local v13, "volumeKeyValue":[I
    const/4 v9, 0x0

    .line 490
    .restart local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    const-string v14, "pref_global_camera_volume_key_as"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 493
    const-string v14, "pref_global_camera_volume_key_as"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    check-cast v9, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 494
    .restart local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    if-eqz v9, :cond_18

    .line 495
    invoke-virtual {v9, v12}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 496
    invoke-virtual {v9, v13}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 501
    .end local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .end local v12    # "volumeKeyList":[Ljava/lang/String;
    .end local v13    # "volumeKeyValue":[I
    :cond_18
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    if-nez v14, :cond_19

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.samsung.helphub"

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.samsung.helphub"

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 503
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 504
    .local v3, "helpPref":Landroid/preference/Preference;
    const v14, 0x7f0800b6

    invoke-virtual {v3, v14}, Landroid/preference/Preference;->setTitle(I)V

    .line 505
    new-instance v14, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    invoke-virtual {v3, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 512
    const-string v14, "pref_camera_help_key"

    invoke-virtual {v3, v14}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 517
    .end local v3    # "helpPref":Landroid/preference/Preference;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/16 v15, 0x13f

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 525
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v4, v14, :cond_43

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 527
    .local v8, "mPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 528
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "mKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    if-eqz v14, :cond_1b

    .line 530
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setDim(Ljava/lang/String;)V

    .line 532
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 534
    instance-of v14, v8, Landroid/preference/ListPreference;

    if-eqz v14, :cond_1c

    move-object v7, v8

    .line 535
    check-cast v7, Landroid/preference/ListPreference;

    .line 536
    .local v7, "mListPref":Landroid/preference/ListPreference;
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    .end local v7    # "mListPref":Landroid/preference/ListPreference;
    :cond_1c
    instance-of v14, v8, Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_3c

    .line 539
    const-string v14, "pref_global_motion_photo_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 540
    const v14, 0x7f080181

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1d
    const-string v14, "pref_global_camera_detection_mode_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 543
    const v14, 0x7f080152

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0041

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    :cond_1e
    const-string v14, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 545
    const v14, 0x7f0801ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 546
    :cond_1f
    const-string v14, "pref_global_rear_lens_distortion_correction_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 547
    const v14, 0x7f0801a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    :cond_20
    const-string v14, "pref_global_camera_quick_shot"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 549
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isVZWFeature()Z

    move-result v14

    if-eqz v14, :cond_38

    .line 550
    const v14, 0x7f0801a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    :goto_5
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v14

    if-eqz v14, :cond_3a

    move-object v14, v8

    .line 555
    check-cast v14, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "double_tab_launch"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_39

    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 562
    :cond_21
    :goto_7
    const-string v14, "pref_global_setup_review_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 563
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isVZWFeature()Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 564
    const v14, 0x7f0801b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    :cond_22
    :goto_8
    const-string v14, "pref_global_camera_picture_format"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 570
    const v14, 0x7f08018f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    :cond_23
    const-string v14, "pref_global_setup_voice_control_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    const-string v14, "pref_global_setup_voice_control_front_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 572
    :cond_24
    new-instance v14, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v14}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getBargeInCmdStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "bargeInCommands":[Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 575
    const v14, 0x7f080204

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    .end local v1    # "bargeInCommands":[Ljava/lang/String;
    :cond_25
    const-string v14, "pref_global_setup_self_flip_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 580
    const v14, 0x7f0801bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    :cond_26
    const-string v14, "pref_global_setup_gps_key"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 583
    const v14, 0x7f08016e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    :cond_27
    :goto_9
    invoke-virtual {v8}, Landroid/preference/Preference;->getTitleRes()I

    move-result v14

    const v15, 0x7f0801b0

    if-ne v14, v15, :cond_29

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    if-eqz v14, :cond_28

    .line 596
    const/16 v14, 0x19

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v14

    if-nez v14, :cond_3e

    const/4 v14, 0x1

    :goto_a
    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 598
    :cond_28
    new-instance v14, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 606
    :cond_29
    if-eqz v6, :cond_2b

    const-string v14, "camcorder_resolution"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-nez v14, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_3f

    :cond_2a
    move-object v14, v8

    .line 608
    check-cast v14, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v15, 0x7f0800c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 614
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoFixedResolution()Z

    move-result v14

    if-eqz v14, :cond_40

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAttachVideoFixedResolution()I

    move-result v2

    .line 624
    .local v2, "camcorderResolution":I
    :goto_c
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v14, v8

    .line 626
    check-cast v14, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 628
    new-instance v14, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 637
    .end local v2    # "camcorderResolution":I
    :cond_2b
    if-eqz v6, :cond_2d

    const-string v14, "shooting_method"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-nez v14, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_42

    :cond_2c
    move-object v14, v8

    .line 639
    check-cast v14, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v15, 0x7f0800cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 644
    :goto_d
    new-instance v14, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 525
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 358
    .end local v4    # "i":I
    .end local v5    # "loader":Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    .end local v6    # "mKey":Ljava/lang/String;
    .end local v8    # "mPreference":Landroid/preference/Preference;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v14

    if-nez v14, :cond_2f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_30

    .line 359
    :cond_2f
    const v14, 0x7f060002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 360
    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v14

    if-nez v14, :cond_31

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 361
    :cond_31
    const v14, 0x7f060003

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 364
    :cond_32
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 376
    .restart local v5    # "loader":Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    .restart local v10    # "videoSizeList":[Ljava/lang/String;
    .restart local v11    # "videoSizeValue":[I
    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v14

    if-eqz v14, :cond_34

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualBackVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 378
    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v11

    goto/16 :goto_1

    .line 379
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_35

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 381
    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v11

    goto/16 :goto_1

    .line 382
    :cond_35
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualFrontVideoSizeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 384
    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v11

    goto/16 :goto_1

    .line 391
    .restart local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_36
    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 392
    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    goto/16 :goto_2

    .line 401
    .end local v9    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .end local v10    # "videoSizeList":[Ljava/lang/String;
    .end local v11    # "videoSizeValue":[I
    :cond_37
    const-string v14, "camcorder_resolution_spinner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "camcorder_resolution_spinner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 552
    .restart local v4    # "i":I
    .restart local v6    # "mKey":Ljava/lang/String;
    .restart local v8    # "mPreference":Landroid/preference/Preference;
    :cond_38
    const v14, 0x7f0801a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 555
    :cond_39
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 558
    :cond_3a
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object v14, v8

    .line 559
    check-cast v14, Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 566
    :cond_3b
    const v14, 0x7f0801b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 585
    :cond_3c
    instance-of v14, v8, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v14, :cond_27

    .line 586
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 587
    const-string v14, "camcorder_resolution_spinner"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v15}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v15

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_3d
    move-object v14, v8

    .line 590
    check-cast v14, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 596
    :cond_3e
    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_3f
    move-object v14, v8

    .line 610
    check-cast v14, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v15, 0x7f0800af

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 617
    :cond_40
    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v14

    if-eqz v14, :cond_41

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "pref_overridden_camcorder_resolution"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v16

    invoke-static/range {v14 .. v16}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "camcorderResolution":I
    goto/16 :goto_c

    .line 621
    .end local v2    # "camcorderResolution":I
    :cond_41
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .restart local v2    # "camcorderResolution":I
    goto/16 :goto_c

    .end local v2    # "camcorderResolution":I
    :cond_42
    move-object v14, v8

    .line 641
    check-cast v14, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v15, 0x7f0800ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 660
    .end local v6    # "mKey":Ljava/lang/String;
    .end local v8    # "mPreference":Landroid/preference/Preference;
    :cond_43
    const/4 v14, 0x1

    return v14
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "dim"    # Lcom/sec/android/app/camera/DimController;

    .prologue
    .line 179
    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    .line 180
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    return-object v1
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "dim"    # Lcom/sec/android/app/camera/DimController;
    .param p2, "preferenceResId"    # I

    .prologue
    .line 188
    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    .line 189
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    const-string v2, "preference_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 194
    return-object v1
.end method

.method private setChecked(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 672
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDim(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, "isDim":Z
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 687
    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v0

    .line 688
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dismissCameraDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 199
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "pref_global_camera_quick_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "Z041"

    .line 314
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const-string v0, "Z117"

    goto :goto_0

    .line 311
    :cond_1
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "Z131"

    goto :goto_0

    .line 314
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCamcorderResolutionChanged(I)V
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "preference_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_1

    .line 222
    const/16 v0, 0x26

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 225
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 231
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    const-string v0, "PreferenceSettingFragment"

    const-string v1, "Mobile Keyboard mounted, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    .line 241
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x1ae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    .line 246
    const/16 v0, 0x197

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    .line 247
    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    .line 248
    const/16 v0, 0x1a3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    .line 249
    const/16 v0, 0x19f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 251
    return-void
.end method

.method protected refreshMenu()V
    .locals 4

    .prologue
    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    if-eqz v2, :cond_0

    .line 325
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setDim(Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 331
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_2
    :goto_1
    return-void

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public setGPS(Z)V
    .locals 2
    .param p1, "gps"    # Z

    .prologue
    .line 259
    const-string v1, "pref_global_setup_gps_key"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 260
    .local v0, "mGpsPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public showCameraDialog(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 272
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 273
    .local v2, "fragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(I)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 278
    .local v0, "dialog":Landroid/app/DialogFragment;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 286
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 287
    .local v2, "fragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 290
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 292
    .local v0, "dialog":Landroid/app/DialogFragment;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
