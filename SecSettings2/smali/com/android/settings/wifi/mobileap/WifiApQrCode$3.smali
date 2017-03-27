.class Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    .line 139
    return-void
.end method
