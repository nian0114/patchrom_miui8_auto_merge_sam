.class Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$2;
.super Landroid/database/DataSetObserver;
.source "WifiSettingsForSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;->updateFooter()V

    .line 112
    return-void
.end method
