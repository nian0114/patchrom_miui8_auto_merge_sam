.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;
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
    .line 1094
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1097
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1098
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1100
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$37;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$302(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1101
    return-void
.end method
