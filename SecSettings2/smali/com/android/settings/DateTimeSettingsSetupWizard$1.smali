.class Lcom/android/settings_ex/DateTimeSettingsSetupWizard$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimeSettingsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/DateTimeSettingsSetupWizard;

    # invokes: Lcom/android/settings_ex/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V
    invoke-static {v0}, Lcom/android/settings_ex/DateTimeSettingsSetupWizard;->access$000(Lcom/android/settings_ex/DateTimeSettingsSetupWizard;)V

    .line 324
    return-void
.end method
