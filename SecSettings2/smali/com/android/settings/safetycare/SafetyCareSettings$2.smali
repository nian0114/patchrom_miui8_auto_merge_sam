.class Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;
.super Landroid/database/ContentObserver;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/safetycare/SafetyCareSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v4, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->access$100(Lcom/android/settings_ex/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "send_emergency_message"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 131
    .local v1, "bStatus":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "block_emergency_message"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 134
    .local v0, "bIsEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->access$100(Lcom/android/settings_ex/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 136
    if-nez v0, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->access$100(Lcom/android/settings_ex/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const v3, 0x7f0e14ad

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 142
    .end local v0    # "bIsEnabled":Z
    .end local v1    # "bStatus":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 128
    goto :goto_0

    .restart local v1    # "bStatus":Z
    :cond_2
    move v0, v3

    .line 131
    goto :goto_1

    .line 139
    .restart local v0    # "bIsEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings_ex/safetycare/SafetyCareSettings;->access$100(Lcom/android/settings_ex/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-ne v1, v2, :cond_4

    const v2, 0x7f0e0ea6

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_4
    const v2, 0x7f0e0ea7

    goto :goto_3
.end method
