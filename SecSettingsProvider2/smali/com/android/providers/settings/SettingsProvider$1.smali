.class Lcom/android/providers/settings/SettingsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 647
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 650
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 665
    :goto_1
    return-void

    .line 650
    :sswitch_0
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "android.intent.action.USER_STOPPED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 652
    :pswitch_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->access$000(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V

    goto :goto_1

    .line 656
    :pswitch_1
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->access$000(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V

    goto :goto_1

    .line 660
    :pswitch_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v0, "keyset":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/os/PersonaPolicyManager;->getKnoxKeys(Ljava/util/HashSet;)V

    .line 662
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # setter for: Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;
    invoke-static {v2, v0}, Lcom/android/providers/settings/SettingsProvider;->access$102(Lcom/android/providers/settings/SettingsProvider;Ljava/util/HashSet;)Ljava/util/HashSet;

    goto :goto_1

    .line 650
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_0
        -0x2c3dc982 -> :sswitch_1
        0x42dd01f1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
