.class Lcom/android/settings_ex/DualSoundRingtoneSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DualSoundRingtoneSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DualSoundRingtoneSettings;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings_ex/DualSoundRingtoneSettings$3;->this$0:Lcom/android/settings_ex/DualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/DualSoundRingtoneSettings$3;->this$0:Lcom/android/settings_ex/DualSoundRingtoneSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DualSoundRingtoneSettings;->finish()V

    .line 261
    return-void
.end method
