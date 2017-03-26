.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 136
    const-string v0, "ConfirmConnectToWifiNetworkActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V
    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 138
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # getter for: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v0, "c":Landroid/view/ContextThemeWrapper;
    const v1, 0x7f070054

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method
