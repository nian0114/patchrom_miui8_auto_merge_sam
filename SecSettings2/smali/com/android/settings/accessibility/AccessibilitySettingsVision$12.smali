.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$12;
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
    .line 327
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$12;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$12;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$2100(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)V

    .line 331
    return-void
.end method
