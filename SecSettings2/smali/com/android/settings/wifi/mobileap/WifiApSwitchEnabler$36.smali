.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1066
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$1500(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$36;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$302(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1073
    return-void
.end method
