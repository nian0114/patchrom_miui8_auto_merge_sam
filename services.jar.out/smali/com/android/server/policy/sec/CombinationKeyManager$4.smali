.class Lcom/android/server/policy/sec/CombinationKeyManager$4;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isSupportPowerTriplePress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const v3, 0xc35a

    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-string v2, "CombinationKeyManager"

    const-string v3, "Safety mesage broadcasted by Volume up/down 3sec press"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    # getter for: Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "114"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "startFlag"

    const-string v3, "002"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "CombinationKeyManager"

    const-string v3, "OneTouchReport started"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const v3, 0xc35e

    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager$4;->this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "112"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "CombinationKeyManager"

    const-string v3, "OneTouchReport was disable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
