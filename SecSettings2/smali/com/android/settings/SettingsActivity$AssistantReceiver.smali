.class Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1051
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.Favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->openEditView()V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    const-string v1, "com.android.settings.Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->openSearchView()V

    goto :goto_0
.end method
