.class public Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;
.super Lcom/android/settings_ex/cloud/SyncFragment;
.source "CloudPhotosSyncFragment.java"


# static fields
.field private static isPictureSyncAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "photoSync"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mActionBarSwitch:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mActionBarSwitch:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wifiOnlyType"

    const-string v3, "photo"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "wifiOnlyValue"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "wifiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPreferencesReference()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "pref_wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 51
    const-string v0, "sync_description"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/cloud/PhotosSyncDescriptionPreference;

    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    .line 53
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ex/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getPreferencesReference()V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings_ex/cloud/SyncFragment;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mActionBarSwitch:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mActionBarSwitch:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mActionBarSwitch:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->updatePreferences()V

    .line 67
    return-void
.end method

.method protected toggleCheckbox(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 129
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setWifiOnly(IZ)V

    .line 130
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setPhotoSync(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings_ex/cloud/PhotosSyncDescriptionPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/cloud/PhotosSyncDescriptionPreference;->showDivider(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->updatePreferences()V

    .line 122
    return-void
.end method

.method protected updatePreferences()V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 73
    .local v0, "mPreferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/cloud/CloudSettings;->isPhoneModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    .line 75
    sget-boolean v1, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/cloud/CloudSettings;->isWifiOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
