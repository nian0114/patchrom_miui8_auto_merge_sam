.class Lcom/android/server/display/WifiDisplayAdapter$18;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$off:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$18;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$18;->val$off:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1589
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$18;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1590
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1591
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1592
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1594
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "stop"

    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayAdapter$18;->val$off:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1595
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1596
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1598
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
