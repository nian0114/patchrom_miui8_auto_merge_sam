.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 164
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_window_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v0, v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$002(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)I

    .line 183
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 185
    :cond_0
    return-void
.end method
