.class Lcom/android/settings_ex/guide/WifiSettingsGuider$7;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/WifiSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->access$200(Lcom/android/settings_ex/guide/WifiSettingsGuider;)Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->access$200(Lcom/android/settings_ex/guide/WifiSettingsGuider;)Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 685
    return-void
.end method
