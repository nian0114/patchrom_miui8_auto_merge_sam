.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$22;
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
    .line 854
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$22;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$22;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 857
    return-void
.end method
