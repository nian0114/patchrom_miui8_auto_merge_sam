.class Lcom/android/settings_ex/ScreenPinningSettings$3;
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
    .line 346
    iput-object p1, p0, Lcom/android/settings_ex/ScreenPinningSettings$3;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$3;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # getter for: Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->access$100(Lcom/android/settings_ex/ScreenPinningSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$3;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    # invokes: Lcom/android/settings_ex/ScreenPinningSettings;->setLockToAppEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenPinningSettings;->access$200(Lcom/android/settings_ex/ScreenPinningSettings;Z)V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings$3;->this$0:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenPinningSettings;->updateDisplay()V

    .line 351
    return-void
.end method
