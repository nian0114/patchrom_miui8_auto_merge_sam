.class Lcom/android/settings_ex/wifi/WifiSettings$40;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showMaliciousHotspotDialog(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;

.field final synthetic val$mBssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6273
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->val$mBssid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 6276
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->val$mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z

    .line 6277
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$5102(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 6278
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMaliciousHotspotDialog - DISCONNECT and add the BSSID to SBlacklist.\n Current SBlacklist\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$40;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6280
    return-void
.end method
