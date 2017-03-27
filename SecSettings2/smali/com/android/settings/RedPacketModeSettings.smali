.class public Lcom/android/settings_ex/RedPacketModeSettings;
.super Landroid/app/Fragment;
.source "RedPacketModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mRedPackedModeObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 51
    new-instance v0, Lcom/android/settings_ex/RedPacketModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/RedPacketModeSettings$1;-><init>(Lcom/android/settings_ex/RedPacketModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mRedPackedModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RedPacketModeSettings;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RedPacketModeSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 69
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v1, 0x7f0401b3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 127
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mRedPackedModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "red_packet_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mRedPackedModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "red_packet_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 111
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "red_packet_do_not_show"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 83
    .local v2, "showDialog":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "red_packet_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 84
    .local v0, "enabled":Z
    :goto_1
    const-string v5, "RedPackedModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSwitchChanged  showDialog:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isChecked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eq v0, p2, :cond_5

    .line 86
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/settings_ex/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.systemui.REDPACKET_MODE_ON_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings"

    const-string v5, "REDP"

    const/16 v6, 0x3e8

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    :cond_0
    :goto_3
    return-void

    .end local v0    # "enabled":Z
    .end local v2    # "showDialog":Z
    :cond_1
    move v2, v4

    .line 82
    goto :goto_0

    .restart local v2    # "showDialog":Z
    :cond_2
    move v0, v4

    .line 83
    goto :goto_1

    .line 91
    .restart local v0    # "enabled":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "red_packet_mode"

    if-eqz p2, :cond_4

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_4

    .line 97
    :cond_5
    const-string v3, "RedPackedModeSettings"

    const-string v4, "Changed form Quick Button."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
