.class Lcom/android/settings_ex/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ScreenPinningSettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ScreenPinningSettings;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings_ex/ScreenPinningSettings$2;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings$2;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 357
    .local v0, "isEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings$2;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # getter for: Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/ScreenPinningSettings;->access$100(Lcom/android/settings_ex/ScreenPinningSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings$2;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # invokes: Lcom/android/settings_ex/ScreenPinningSettings;->setLockToAppEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/ScreenPinningSettings;->access$200(Lcom/android/settings_ex/ScreenPinningSettings;Z)V

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings$2;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ScreenPinningSettings;->updateDisplay()V

    .line 360
    return-void
.end method
