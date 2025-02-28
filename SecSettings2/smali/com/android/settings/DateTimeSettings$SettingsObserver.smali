.class Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DateTimeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    .line 145
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 150
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 153
    .local v1, "isSettingWizard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 154
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    const-string v5, "auto_time"

    # invokes: Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/settings_ex/DateTimeSettings;->access$000(Lcom/android/settings_ex/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    .line 155
    .local v0, "autoEnabled":Z
    const-string v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsObserver onChange getAutoState() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    # getter for: Lcom/android/settings_ex/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings_ex/DateTimeSettings;->access$100(Lcom/android/settings_ex/DateTimeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    # getter for: Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings_ex/DateTimeSettings;->access$200(Lcom/android/settings_ex/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v0, :cond_2

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    # getter for: Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings_ex/DateTimeSettings;->access$300(Lcom/android/settings_ex/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    # invokes: Lcom/android/settings_ex/DateTimeSettings;->applyEDMDateTimeChangePolicy()V
    invoke-static {v2}, Lcom/android/settings_ex/DateTimeSettings;->access$400(Lcom/android/settings_ex/DateTimeSettings;)V

    .line 162
    .end local v0    # "autoEnabled":Z
    :cond_0
    return-void

    .end local v1    # "isSettingWizard":Z
    :cond_1
    move v1, v3

    .line 150
    goto :goto_0

    .restart local v0    # "autoEnabled":Z
    .restart local v1    # "isSettingWizard":Z
    :cond_2
    move v4, v3

    .line 157
    goto :goto_1

    :cond_3
    move v2, v3

    .line 158
    goto :goto_2
.end method
