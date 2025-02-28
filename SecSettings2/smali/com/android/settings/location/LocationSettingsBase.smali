.class public abstract Lcom/android/settings_ex/location/LocationSettingsBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private mActive:Z

.field private mCurrentMode:I

.field protected mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/LocationSettingsBase;Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettingsBase;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/location/LocationSettingsBase;->setVzwProviderAndMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method private isRestricted()Z
    .locals 20

    .prologue
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "user"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 118
    .local v16, "um":Landroid/os/UserManager;
    const-string v17, "no_share_location"

    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    .line 120
    .local v9, "isRestricted":Z
    const/4 v11, 0x0

    .line 122
    .local v11, "mdmRestricted":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "gps"

    aput-object v18, v13, v17

    .line 125
    .local v13, "selectionArgsGPS":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "network"

    aput-object v18, v14, v17

    .line 128
    .local v14, "selectionArgsNetwork":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "false"

    aput-object v18, v12, v17

    .line 131
    .local v12, "selectionArgsFalse":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v15, v17

    .line 134
    .local v15, "selectionArgsNull":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v19, "isSettingsChangesAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v12}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 137
    .local v10, "isSettingsChangesAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/LocationPolicy"

    const-string v19, "isLocationProviderBlocked"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v13}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 141
    .local v7, "isLocationProviderBlockedGPS":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/LocationPolicy"

    const-string v19, "isLocationProviderBlocked"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v14}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 145
    .local v8, "isLocationProviderBlockedNetwork":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/LocationPolicy"

    const-string v19, "isGPSStateChangeAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 148
    .local v6, "isLocationGPSStateChangeAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "gps"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 150
    .local v5, "isGpsOn":Z
    const-string v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isSettingsChangesAllowed = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isLocationProviderBlockedGPS = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isLocationProviderBlockedNetwork = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isLocationGPSStateChangeAllowed = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    :cond_0
    const/4 v3, 0x1

    .line 157
    .local v3, "isGpsBlocked":Z
    :goto_0
    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    const/4 v4, 0x1

    .line 158
    .local v4, "isGpsEnforced":Z
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    .line 162
    if-eqz v3, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    :cond_1
    if-eqz v10, :cond_2

    if-eqz v4, :cond_3

    .line 164
    :cond_2
    const/4 v11, 0x1

    .line 167
    :cond_3
    const-string v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isRestricted()   mdmRestricted= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " UserRestricted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez v9, :cond_4

    if-eqz v11, :cond_7

    :cond_4
    const/16 v17, 0x1

    :goto_2
    return v17

    .line 155
    .end local v3    # "isGpsBlocked":Z
    .end local v4    # "isGpsEnforced":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    .restart local v3    # "isGpsBlocked":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 170
    .restart local v4    # "isGpsEnforced":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private setVzwProviderAndMode(Landroid/content/Context;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "locationMode"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/location/LocationSettingsBase;->setLocationMode(I)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 81
    :cond_0
    new-instance v1, Lcom/android/settings_ex/location/LocationSettingsBase$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/location/LocationSettingsBase$1;-><init>(Lcom/android/settings_ex/location/LocationSettingsBase;)V

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    .line 110
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, "mode":I
    iput v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mCurrentMode:I

    .line 202
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "LocationSettingsBase"

    const-string v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 207
    .end local v0    # "mode":I
    :cond_1
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "LocationSettingsBase"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 183
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method

.method public showVzwLocationConsentDialog(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "consentText":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e10a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e10a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0f8a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/location/LocationSettingsBase$4;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase$4;-><init>(Lcom/android/settings_ex/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0f8b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/location/LocationSettingsBase$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase$3;-><init>(Lcom/android/settings_ex/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/location/LocationSettingsBase$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase$2;-><init>(Lcom/android/settings_ex/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    .end local v0    # "consentText":Ljava/lang/String;
    :cond_0
    return-void

    .line 217
    .restart local v0    # "consentText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e10a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateVerizonProvider(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-string v2, "LocationSettingsBase"

    const-string v3, "updateVerizonProvider Restricted user, not setting location mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 256
    .local v0, "isGpsEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_lbs"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nim.vznavigator.app2app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "vzwGpsIntent":Landroid/content/Intent;
    const-string v3, "context"

    if-eqz v0, :cond_2

    const-string v2, "vznavigator:app2app?version=2.0&credential=0211&commands=A"

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    :cond_2
    const-string v2, "vznavigator:app2app?version=2.0&credential=0211&commands=D"

    goto :goto_1
.end method
