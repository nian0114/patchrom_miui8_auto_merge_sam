.class Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$1500(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setEnabled(Z)V

    goto :goto_0
.end method
