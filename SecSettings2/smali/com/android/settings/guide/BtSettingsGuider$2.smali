.class Lcom/android/settings_ex/guide/BtSettingsGuider$2;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;->initHelpDialogContent(II)V
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
    .line 536
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$100(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$100(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 543
    return-void
.end method
