.class Lcom/android/settings_ex/wifi/WifiSettings$34;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3708
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$34;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3711
    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4600()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3712
    const-string v0, "WifiSettings"

    const-string v1, "user continue connnecting AP with EAP-TLS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$34;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4600()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$34;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4800(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3714
    const/4 v0, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4602(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 3718
    :goto_0
    return-void

    .line 3716
    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "WIFI_WARNING_CA_CERT_DIALOG_ID config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
