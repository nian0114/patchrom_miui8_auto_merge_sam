.class Lcom/android/settings_ex/ResetSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ResetSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/ResetSettings$1;->this$0:Lcom/android/settings_ex/ResetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings$1;->this$0:Lcom/android/settings_ex/ResetSettings;

    # setter for: Lcom/android/settings_ex/ResetSettings;->databaseReset:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/ResetSettings;->access$002(Lcom/android/settings_ex/ResetSettings;Z)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings$1;->this$0:Lcom/android/settings_ex/ResetSettings;

    new-instance v1, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;

    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings$1;->this$0:Lcom/android/settings_ex/ResetSettings;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;-><init>(Lcom/android/settings_ex/ResetSettings;Lcom/android/settings_ex/ResetSettings$1;)V

    iput-object v1, v0, Lcom/android/settings_ex/ResetSettings;->resetTask:Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings$1;->this$0:Lcom/android/settings_ex/ResetSettings;

    iget-object v0, v0, Lcom/android/settings_ex/ResetSettings;->resetTask:Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;

    new-array v1, v4, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    :cond_0
    return-void
.end method
