.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 175
    const-string v1, "BluetoothSettings"

    const-string v2, "onReceive :: Intent.getAction() is return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive :: getAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;IZ)V

    goto :goto_0
.end method
