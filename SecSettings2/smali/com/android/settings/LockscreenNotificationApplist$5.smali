.class Lcom/android/settings_ex/LockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LockscreenNotificationApplist;
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
    .line 565
    iput-object p1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings_ex/LockscreenNotificationApplist;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->access$1200(Lcom/android/settings_ex/LockscreenNotificationApplist;)V

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    # getter for: Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->access$200(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings_ex/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z
    invoke-static {v1}, Lcom/android/settings_ex/LockscreenNotificationApplist;->access$100(Lcom/android/settings_ex/LockscreenNotificationApplist;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 570
    return-void
.end method
