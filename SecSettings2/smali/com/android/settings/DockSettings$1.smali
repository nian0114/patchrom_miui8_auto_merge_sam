.class Lcom/android/settings_ex/DockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DockSettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    const-string v1, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "state":I
    const-string v1, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-ne v0, v5, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$000(Lcom/android/settings_ex/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$000(Lcom/android/settings_ex/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$000(Lcom/android/settings_ex/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$100(Lcom/android/settings_ex/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 124
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v0    # "state":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$000(Lcom/android/settings_ex/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$1;->this$0:Lcom/android/settings_ex/DockSettings;

    # getter for: Lcom/android/settings_ex/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DockSettings;->access$100(Lcom/android/settings_ex/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
