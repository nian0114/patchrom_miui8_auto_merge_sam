.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$1;
.super Ljava/lang/Object;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;->showDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;)V

    .line 62
    return-void
.end method
