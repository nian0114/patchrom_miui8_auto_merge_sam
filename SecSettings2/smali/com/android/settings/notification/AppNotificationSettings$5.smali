.class Lcom/android/settings_ex/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    const-string v0, "AppNotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide on lock screen onPreferenceChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # setter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$402(Lcom/android/settings_ex/notification/AppNotificationSettings;Z)Z

    .line 274
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$500(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$400(Lcom/android/settings_ex/notification/AppNotificationSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # invokes: Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V
    invoke-static {v3, v4, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$600(Lcom/android/settings_ex/notification/AppNotificationSettings;Landroid/preference/Preference;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$200(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I
    invoke-static {v4}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z
    invoke-static {v5}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$400(Lcom/android/settings_ex/notification/AppNotificationSettings;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/settings_ex/notification/NotificationBackend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    :cond_1
    move v1, v2

    .line 275
    goto :goto_1
.end method
