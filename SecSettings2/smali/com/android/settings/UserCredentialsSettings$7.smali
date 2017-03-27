.class Lcom/android/settings_ex/UserCredentialsSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$7;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$7;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    # getter for: Lcom/android/settings_ex/UserCredentialsSettings;->mInForeground:Z
    invoke-static {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->access$3800(Lcom/android/settings_ex/UserCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$7;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    # invokes: Lcom/android/settings_ex/UserCredentialsSettings;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->access$3900(Lcom/android/settings_ex/UserCredentialsSettings;)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$7;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/UserCredentialsSettings;->mRefreshUI:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserCredentialsSettings;->access$4002(Lcom/android/settings_ex/UserCredentialsSettings;Z)Z

    goto :goto_0
.end method
