.class public Lcom/sec/android/app/camera/setting/CameraSettingActivity;
.super Landroid/app/Activity;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/setting/ListSettingFragment$OnCamcorderResolutionSelectListener;


# static fields
.field public static final RESULT_RESET:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "CameraSettingActivity"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mIsFromSecureLocationSetting:Z

.field private mLayoutRes:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mNeedToShowLocationDialog:Z

.field private mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

.field private mResolutionFragment:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mResolutionFragment:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 62
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method private deinitIntentFilter()V
    .locals 4

    .prologue
    .line 316
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CameraSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver isn\'t registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 326
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initializeLocationManager()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 340
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPreferenceFragment(I)V
    .locals 4
    .param p1, "preferenceResId"    # I

    .prologue
    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    .line 271
    .local v1, "preferenceFragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 272
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 275
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method

.method public isNetworkProviderEnabled()Z
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 282
    const-string v1, "CameraSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "location_dialog_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "id":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 289
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setHighAccuracyLocationMode()V

    goto :goto_0

    .line 294
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    goto :goto_0

    .line 300
    .end local v0    # "id":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x7ea
        :pswitch_0
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x19f
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCamcorderResolutionSelect(I)V
    .locals 6
    .param p1, "newResolution"    # I

    .prologue
    .line 102
    const-string v3, "CameraSettingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCamcorderResolutionSelect resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 104
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v4, "camcorder_resolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 105
    .local v2, "settingPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onCamcorderResolutionChanged(I)V

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v4, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "featureValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 112
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 113
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 115
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    const v3, 0x7f0e0008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .local v1, "size":I
    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    const v3, 0x7f0e0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "frameView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    .end local v0    # "frameView":Landroid/view/View;
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v2, "CameraSettingActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckRuntimePermission(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "camera-parcel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 144
    const-string v2, "setting"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 145
    const-string v2, "dim"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DimController;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initIntentFilter()V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 152
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SETTING_LIST_HORIZONTAL_ALIGN_WITH_PADING:Z

    if-eqz v2, :cond_3

    .line 153
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setContentView(I)V

    .line 154
    const v2, 0x7f0e0009

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 156
    :cond_3
    const v2, 0x1020002

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "CameraSettingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->deinitIntentFilter()V

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 175
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 176
    const-string v1, "CameraSettingActivity"

    const-string v2, "BACK KEY PRESSED!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLaunchListFragment(I)V
    .locals 3
    .param p1, "listType"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;I)Lcom/sec/android/app/camera/setting/ListSettingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mResolutionFragment:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 310
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mResolutionFragment:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 312
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 313
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 202
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "CameraSettingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController;->restoreUserSettingValues()V

    .line 215
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const-string v0, "CameraSettingActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v1, 0x19f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 229
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v0, :cond_2

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 236
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 242
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    return-void

    .line 234
    :cond_5
    const/16 v0, 0x1a2

    goto :goto_0
.end method

.method public resetSetting()V
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    .line 248
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "CameraSettingActivity"

    const-string v1, "update setting db for double tab launch as default value"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 255
    return-void
.end method

.method public setGPS(Z)V
    .locals 1
    .param p1, "gps"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setGPS(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method public setHighAccuracyLocationMode()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "CameraSettingActivity"

    const-string v1, "setHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 266
    return-void
.end method
