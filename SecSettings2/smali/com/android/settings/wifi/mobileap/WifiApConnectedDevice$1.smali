.class Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;I)V

    .line 164
    return-void
.end method
