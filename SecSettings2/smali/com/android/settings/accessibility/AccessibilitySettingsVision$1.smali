.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$1;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$000(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;->access$100(Lcom/android/settings_ex/accessibility/AccessibilitySettingsVision;)V

    .line 179
    return-void
.end method
