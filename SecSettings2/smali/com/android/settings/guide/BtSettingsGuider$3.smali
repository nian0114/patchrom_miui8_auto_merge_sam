.class Lcom/android/settings_ex/guide/BtSettingsGuider$3;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;
    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$000(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    iget-object v0, v0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/android/settings_ex/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    .line 656
    :cond_0
    return-void
.end method
