.class Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$4;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    const/4 v1, 0x6

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;I)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method
