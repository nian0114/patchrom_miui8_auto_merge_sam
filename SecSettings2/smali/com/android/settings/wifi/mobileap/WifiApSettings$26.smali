.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 1826
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$5002(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Z)Z

    .line 1827
    return-void
.end method
