.class Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->access$000(Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 297
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 298
    .local v1, "val":Z
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;

    iget-object v3, v3, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eq v1, v3, :cond_0

    .line 299
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowAlarms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;

    iget-object v2, v2, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 301
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 302
    const/4 v2, 0x7

    iput v2, v0, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/notification/ZenModeDNDPrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method
