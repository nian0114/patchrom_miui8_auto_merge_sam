.class Lcom/android/settings_ex/wifi/WifiSettings$41;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 6282
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$41;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 6284
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$41;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$5102(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 6285
    return-void
.end method
