.class Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$300(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$200(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 165
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 170
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 175
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 180
    return-void
.end method
