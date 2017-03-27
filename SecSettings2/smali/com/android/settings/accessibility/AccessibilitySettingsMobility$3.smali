.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$3;
.super Lcom/android/settings_ex/accessibility/SettingsContentObserver;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->access$000(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->access$300(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;)V

    .line 152
    return-void
.end method
