.class Lcom/android/settings_ex/LockscreenNotificationApplist$2;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LockscreenNotificationApplist;->updateAllAppsPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LockscreenNotificationApplist;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 283
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 285
    .local v1, "desiredState":Z
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/LockscreenNotificationApplist;->setStatusPreference(Z)V

    .line 287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 288
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 289
    # getter for: Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/settings_ex/LockscreenNotificationApplist;->access$300()Ljava/util/Hashtable;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-virtual {v6}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 287
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$2;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 292
    .local v3, "mCurrentPreference":Landroid/preference/SwitchPreference;
    # getter for: Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/settings_ex/LockscreenNotificationApplist;->access$300()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;

    .line 293
    .local v0, "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v6, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v6, v7, v1}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    .line 294
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v6, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 295
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 294
    goto :goto_2

    .line 298
    .end local v0    # "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    .end local v3    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_3
    return v5
.end method
