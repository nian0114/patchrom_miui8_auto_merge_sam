.class Lcom/android/settings_ex/wifi/WifiSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;-><init>()V
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
    .line 733
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1100(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Intent;)V

    .line 737
    return-void
.end method
