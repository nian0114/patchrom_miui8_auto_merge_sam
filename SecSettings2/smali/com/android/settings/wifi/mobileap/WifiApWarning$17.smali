.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 696
    return-void
.end method
