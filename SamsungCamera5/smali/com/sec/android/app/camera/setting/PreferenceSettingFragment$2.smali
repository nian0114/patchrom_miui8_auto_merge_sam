.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "mNewValueString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .local v6, "mListPref":Landroid/preference/ListPreference;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "mKey":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v9, v0, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_e

    move-object/from16 v4, p2

    .line 108
    check-cast v4, Ljava/lang/Boolean;

    .line 109
    .local v4, "isChecked":Ljava/lang/Boolean;
    const-string v9, "pref_global_setup_gps_key"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 112
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x1a1

    const/16 v11, 0x7ea

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v10, 0x1a3

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 125
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .line 168
    .end local v4    # "isChecked":Ljava/lang/Boolean;
    :goto_1
    return v9

    .line 117
    .restart local v4    # "isChecked":Ljava/lang/Boolean;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x1a0

    const/16 v11, 0x7ea

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v10, 0x1a2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    goto :goto_0

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v10, 0x19f

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 123
    const/4 v9, 0x0

    goto :goto_1

    .line 127
    :cond_3
    const-string v9, "pref_global_motion_photo_key"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 128
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsFromSystemSetting:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "pref_global_setup_self_flip_key"

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const v11, 0x7f080182

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const v15, 0x7f0800c9

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 163
    .end local v4    # "isChecked":Ljava/lang/Boolean;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "featureValue":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 165
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 166
    .local v1, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 168
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 135
    .end local v2    # "featureValue":Ljava/lang/String;
    .restart local v4    # "isChecked":Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;

    move-result-object v9

    const/16 v10, 0x26

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/DimController;->getSavedUserSettingValues(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 137
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const v11, 0x7f080182

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const v15, 0x7f0800c9

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 141
    :cond_8
    const-string v9, "pref_global_setup_self_flip_key"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 142
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;

    move-result-object v10

    const/16 v11, 0x26

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto/16 :goto_2

    .line 142
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 144
    :cond_a
    const-string v9, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 145
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;

    move-result-object v10

    const/16 v11, 0x17

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 146
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto/16 :goto_2

    .line 145
    :cond_b
    const/4 v9, 0x0

    goto :goto_4

    .line 147
    :cond_c
    const-string v9, "pref_global_camera_quick_shot"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v8, 0x1

    .line 149
    .local v8, "quickLaunch":I
    :goto_5
    const-string v9, "PreferenceSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set Quicklaunch mode. update setting db for double tab launch : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "double_tab_launch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 148
    .end local v8    # "quickLaunch":I
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 152
    .end local v4    # "isChecked":Ljava/lang/Boolean;
    :cond_e
    move-object/from16 v0, p1

    instance-of v9, v0, Landroid/preference/ListPreference;

    if-eqz v9, :cond_10

    move-object/from16 v6, p1

    .line 153
    check-cast v6, Landroid/preference/ListPreference;

    .line 154
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 155
    .local v3, "index":I
    if-ltz v3, :cond_f

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    :goto_6
    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_f
    const/4 v9, 0x0

    goto :goto_6

    .line 156
    .end local v3    # "index":I
    :cond_10
    move-object/from16 v0, p1

    instance-of v9, v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v9, :cond_4

    .line 157
    const-string v9, "camcorder_resolution_spinner"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v9}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_2
.end method
