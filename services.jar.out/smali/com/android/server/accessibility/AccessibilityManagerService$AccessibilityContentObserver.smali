.class final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field private final mAccessibilityEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field private final mEnhancedWebAccessibilityUri:Landroid/net/Uri;

.field private final mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

.field private final mHighTextContrastUri:Landroid/net/Uri;

.field private final mOverlayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mProvisionedUri:Landroid/net/Uri;

.field private final mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

.field private final mScreenCurtainEnabledUri:Landroid/net/Uri;

.field private final mSideSyncUri:Landroid/net/Uri;

.field private final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field private final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field private final mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

.field private final mUniversalSwitchUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5679
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5680
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5620
    const-string v0, "accessibility_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    .line 5623
    const-string/jumbo v0, "touch_exploration_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 5626
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    .line 5629
    const-string/jumbo v0, "enabled_accessibility_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 5632
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 5635
    const-string v0, "accessibility_script_injection"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    .line 5638
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 5641
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 5644
    const-string v0, "accessibility_display_daltonizer"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 5647
    const-string/jumbo v0, "high_text_contrast_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 5651
    const-string v0, "accessibility_magnifier"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    .line 5654
    const-string/jumbo v0, "sidesync_source_connect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSideSyncUri:Landroid/net/Uri;

    .line 5658
    const-string/jumbo v0, "lcd_curtain"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 5661
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mProvisionedUri:Landroid/net/Uri;

    .line 5665
    const-string v0, "accessibility_hwkey_doubletap_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    .line 5669
    const-string/jumbo v0, "enabled_accessibility_s_talkback"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    .line 5673
    const-string v0, "accessibility_universal_switch_screen_as_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

    .line 5676
    const-string/jumbo v0, "universal_switch_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUniversalSwitchUri:Landroid/net/Uri;

    .line 5681
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 5731
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5734
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 5735
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const-string v6, "AccessibilityManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChange().selfChange:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5738
    monitor-exit v5

    .line 5849
    :goto_0
    return-void

    .line 5741
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5742
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5743
    const-string v4, "AccessibilityManagerService"

    const-string/jumbo v6, "onChange():Accessibility enabled uri changed"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5848
    :cond_1
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5746
    .restart local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5747
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5748
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_1

    .line 5750
    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5751
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5752
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_1

    .line 5754
    :cond_4
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5755
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5756
    const-string v4, "AccessibilityManagerService"

    const-string/jumbo v6, "onChange():Enabled Accessibility Services uri changed"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5758
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->checkTalkbackEnable()Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-ne v4, v0, :cond_1

    .line 5759
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenCurtain()V

    goto :goto_1

    .line 5762
    :cond_5
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5763
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5764
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_1

    .line 5766
    :cond_6
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5767
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5768
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_1

    .line 5771
    :cond_7
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5772
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5774
    :try_start_2
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_8

    .line 5775
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5776
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5779
    :cond_8
    monitor-exit v6

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4

    .line 5780
    :cond_9
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSideSyncUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5781
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sidesync_source_connect"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v2, v0

    .line 5782
    .local v2, "sideSyncConnected":Z
    :goto_2
    if-eqz v2, :cond_b

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    if-eqz v4, :cond_b

    .line 5783
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    .line 5784
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_1

    .end local v2    # "sideSyncConnected":Z
    :cond_a
    move v2, v4

    .line 5781
    goto :goto_2

    .line 5786
    .restart local v2    # "sideSyncConnected":Z
    :cond_b
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5787
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5788
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_1

    .line 5793
    .end local v2    # "sideSyncConnected":Z
    :cond_c
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 5794
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lcd_curtain"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v0, :cond_d

    move v1, v0

    .line 5795
    .local v1, "screenCurtainEnabled":Z
    :goto_3
    if-nez v1, :cond_1

    .line 5796
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-ne v4, v0, :cond_1

    .line 5797
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenCurtain()V

    goto/16 :goto_1

    .end local v1    # "screenCurtainEnabled":Z
    :cond_d
    move v1, v4

    .line 5794
    goto :goto_3

    .line 5800
    :cond_e
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5801
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_f

    .line 5802
    .local v0, "provisioned":Z
    :goto_4
    if-eqz v0, :cond_1

    .line 5803
    const-string v4, "AccessibilityManagerService"

    const-string v6, "Setup wizard Done. provisioned : true"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5805
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    goto/16 :goto_1

    .end local v0    # "provisioned":Z
    :cond_f
    move v0, v4

    .line 5801
    goto :goto_4

    .line 5808
    :cond_10
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5811
    :cond_11
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5812
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_1

    .line 5814
    :cond_12
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5815
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5816
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_1

    .line 5818
    :cond_13
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 5819
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5821
    :try_start_4
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_14

    .line 5822
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readHWkeysDoubleTapEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 5823
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5826
    :cond_14
    monitor-exit v6

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4

    .line 5827
    :cond_15
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5828
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5830
    :try_start_6
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_16

    .line 5831
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readSTalkBackSettingsEnabled(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5832
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5835
    :cond_16
    monitor-exit v6

    goto/16 :goto_1

    :catchall_3
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v4

    .line 5837
    :cond_17
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUniversalSwitchUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5838
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5839
    :try_start_8
    const-string v4, "AccessibilityManagerService"

    const-string v7, "UniversalSwitch state is changed"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_18

    .line 5841
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readUnivervalSwitchEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5842
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5845
    :cond_18
    monitor-exit v6

    goto/16 :goto_1

    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 5684
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5686
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5688
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5690
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5692
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5695
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5697
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5699
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5701
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5703
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5706
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5708
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSideSyncUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5711
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5713
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mProvisionedUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5716
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5719
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5722
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5724
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUniversalSwitchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5727
    return-void
.end method
