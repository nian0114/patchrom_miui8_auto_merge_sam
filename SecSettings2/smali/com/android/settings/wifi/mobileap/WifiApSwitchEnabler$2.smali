.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$2;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
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
    .line 622
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 625
    return-void
.end method
