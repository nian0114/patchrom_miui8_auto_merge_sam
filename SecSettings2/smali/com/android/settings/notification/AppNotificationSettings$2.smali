.class Lcom/android/settings_ex/notification/AppNotificationSettings$2;
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
    .line 235
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 238
    const-string v2, "AppNotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block onPreferenceChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 240
    .local v0, "banned":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x93

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$200(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I
    invoke-static {v4}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    move-result v1

    .line 244
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(Z)V
    invoke-static {v2, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$300(Lcom/android/settings_ex/notification/AppNotificationSettings;Z)V

    .line 247
    :cond_1
    return v1

    .line 239
    .end local v0    # "banned":Z
    .end local v1    # "success":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
