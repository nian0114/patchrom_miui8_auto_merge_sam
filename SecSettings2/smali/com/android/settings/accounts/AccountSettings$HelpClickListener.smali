.class Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/accounts/AccountSettings$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 951
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 960
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
