.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$4;
.super Landroid/database/ContentObserver;
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
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$4;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$4;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->access$400(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;)V

    .line 160
    return-void
.end method
