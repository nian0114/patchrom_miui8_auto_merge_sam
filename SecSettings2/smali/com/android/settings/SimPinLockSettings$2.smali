.class Lcom/android/settings_ex/SimPinLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SimPinLockSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/SimPinLockSettings$2;->this$0:Lcom/android/settings_ex/SimPinLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/SimPinLockSettings$2;->this$0:Lcom/android/settings_ex/SimPinLockSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SimPinLockSettings;->finish()V

    .line 129
    :cond_0
    return-void
.end method
