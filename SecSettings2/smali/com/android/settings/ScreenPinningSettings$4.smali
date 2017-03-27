.class Lcom/android/settings_ex/ScreenPinningSettings$4;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 337
    iput-object p1, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # getter for: Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->access$100(Lcom/android/settings_ex/ScreenPinningSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # invokes: Lcom/android/settings_ex/ScreenPinningSettings;->setLockToAppEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/ScreenPinningSettings;->access$200(Lcom/android/settings_ex/ScreenPinningSettings;Z)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$4;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->updateDisplay()V

    .line 344
    return-void
.end method
