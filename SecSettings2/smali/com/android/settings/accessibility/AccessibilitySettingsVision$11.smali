.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$11;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$1900(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v2, "high_contrast_keyboard"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$2000(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$2000(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
