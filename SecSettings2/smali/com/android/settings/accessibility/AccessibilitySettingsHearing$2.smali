.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$2;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsHearing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$300(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$200(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    return-void
.end method
