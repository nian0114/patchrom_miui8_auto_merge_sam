.class Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    goto :goto_0
.end method
