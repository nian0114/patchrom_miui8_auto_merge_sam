.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;-><init>()V
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
    .line 323
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 327
    return-void
.end method
